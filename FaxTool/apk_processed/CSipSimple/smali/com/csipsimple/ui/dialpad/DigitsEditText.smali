.class public Lcom/csipsimple/ui/dialpad/DigitsEditText;
.super Landroid/widget/EditText;
.source "DigitsEditText.java"


# instance fields
.field private isDigit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DigitsEditText;->isDigit:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method


# virtual methods
.method public isTextSelectable()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DigitsEditText;->isDigit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 102
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/csipsimple/ui/dialpad/DigitsEditText;->isDigit:Z

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 107
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 151
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 155
    iget-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DigitsEditText;->isDigit:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setIsDigit(ZZ)V

    .line 156
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 3
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 92
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 94
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/csipsimple/ui/dialpad/DigitsEditText;->isDigit:Z

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 97
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 113
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 114
    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 115
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/csipsimple/ui/dialpad/DigitsEditText;->isDigit:Z

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    :cond_0
    return v1
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    .line 127
    .local v0, "added":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v2

    .line 128
    .local v2, "removed":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 129
    .local v1, "length":I
    if-le v0, v2, :cond_2

    .line 130
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 131
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 132
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 146
    .end local v0    # "added":I
    .end local v1    # "length":I
    .end local v2    # "removed":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 147
    :cond_1
    :goto_1
    return-void

    .line 133
    .restart local v0    # "added":I
    .restart local v1    # "length":I
    .restart local v2    # "removed":I
    :cond_2
    if-le v2, v0, :cond_1

    .line 134
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 135
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 136
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    goto :goto_0

    .line 140
    .end local v0    # "added":I
    .end local v1    # "length":I
    .end local v2    # "removed":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method

.method public declared-synchronized setIsDigit(ZZ)V
    .locals 4
    .param p1, "isDigit"    # Z
    .param p2, "autofocus"    # Z

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/csipsimple/ui/dialpad/DigitsEditText;->isDigit:Z

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/csipsimple/ui/dialpad/DigitsEditText;->isDigit:Z

    .line 63
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 66
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_2

    .line 67
    const v1, 0x80001

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setRawInputType(I)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setTextSize(IF)V

    .line 69
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const v1, 0x80021

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setInputType(I)V

    .line 75
    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setTextSize(IF)V

    .line 76
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
