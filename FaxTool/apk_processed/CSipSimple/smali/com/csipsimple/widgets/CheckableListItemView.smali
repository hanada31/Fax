.class public Lcom/csipsimple/widgets/CheckableListItemView;
.super Landroid/widget/LinearLayout;
.source "CheckableListItemView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private checked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/widgets/CheckableListItemView;->checked:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/widgets/CheckableListItemView;->checked:Z

    .line 45
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/csipsimple/widgets/CheckableListItemView;->checked:Z

    return v0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/csipsimple/widgets/CheckableListItemView;->forceLayout()V

    .line 57
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "aChecked"    # Z

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/csipsimple/widgets/CheckableListItemView;->checked:Z

    if-ne v0, p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-boolean p1, p0, Lcom/csipsimple/widgets/CheckableListItemView;->checked:Z

    .line 74
    iget-boolean v0, p0, Lcom/csipsimple/widgets/CheckableListItemView;->checked:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020030

    :goto_1
    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/CheckableListItemView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f020174

    goto :goto_1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/csipsimple/widgets/CheckableListItemView;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/CheckableListItemView;->setChecked(Z)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
