.class public abstract Lcom/actionbarsherlock/internal/utils/UtilityWrapper;
.super Ljava/lang/Object;
.source "UtilityWrapper.java"


# static fields
.field private static instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    if-nez v0, :cond_0

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 45
    new-instance v0, Lcom/actionbarsherlock/internal/utils/Utility16;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/utils/Utility16;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    .line 59
    :cond_0
    :goto_0
    sget-object v0, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    return-object v0

    .line 46
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 47
    new-instance v0, Lcom/actionbarsherlock/internal/utils/Utility14;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/utils/Utility14;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    goto :goto_0

    .line 48
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 49
    new-instance v0, Lcom/actionbarsherlock/internal/utils/Utility11;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/utils/Utility11;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    goto :goto_0

    .line 50
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    .line 51
    new-instance v0, Lcom/actionbarsherlock/internal/utils/Utility8;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/utils/Utility8;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    goto :goto_0

    .line 52
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_5

    .line 53
    new-instance v0, Lcom/actionbarsherlock/internal/utils/Utility7;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/utils/Utility7;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    goto :goto_0

    .line 55
    :cond_5
    new-instance v0, Lcom/actionbarsherlock/internal/utils/Utility4;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/utils/Utility4;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->instance:Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    goto :goto_0
.end method

.method public static varargs safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parametersType"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 92
    .local v0, "sCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Method not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 95
    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Safe invoke fail"

    const-string v2, "Invalid args"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "Safe invoke fail"

    const-string v2, "Invalid access"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "Safe invoke fail"

    const-string v2, "Invalid target"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public abstract buildPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/PopupWindow;
.end method

.method public abstract combineMeasuredStates(II)I
.end method

.method public abstract getActivityLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMeasuredState(Landroid/view/View;)I
.end method

.method public abstract hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
.end method

.method public abstract isLongPressEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract jumpDrawablesToCurrentState(Landroid/view/View;)V
.end method

.method public abstract jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract resolveSizeAndState(III)I
.end method

.method public abstract setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLinearLayoutDividerDrawable(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLinearLayoutDividerPadding(Landroid/widget/LinearLayout;I)V
.end method

.method public abstract stringToUpper(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract viewSetActivated(Landroid/view/View;Z)V
.end method
