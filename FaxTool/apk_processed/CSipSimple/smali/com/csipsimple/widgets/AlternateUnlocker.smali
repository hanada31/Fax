.class public Lcom/csipsimple/widgets/AlternateUnlocker;
.super Landroid/widget/LinearLayout;
.source "AlternateUnlocker.java"

# interfaces
.implements Lcom/csipsimple/widgets/IOnLeftRightChoice$IOnLeftRightProvider;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/AlternateUnlocker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/widgets/AlternateUnlocker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/AlternateUnlocker;->setOrientation(I)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 58
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03001e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/AlternateUnlocker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "btn":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f060036

    invoke-virtual {p0, v2}, Lcom/csipsimple/widgets/AlternateUnlocker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 77
    .local v0, "id":I
    iget-object v1, p0, Lcom/csipsimple/widgets/AlternateUnlocker;->onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    if-eqz v1, :cond_0

    .line 78
    const v1, 0x7f060037

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/csipsimple/widgets/AlternateUnlocker;->onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/csipsimple/widgets/IOnLeftRightChoice;->onLeftRightChoice(I)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const v1, 0x7f060036

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/csipsimple/widgets/AlternateUnlocker;->onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/csipsimple/widgets/IOnLeftRightChoice;->onLeftRightChoice(I)V

    goto :goto_0
.end method

.method public setOnLeftRightListener(Lcom/csipsimple/widgets/IOnLeftRightChoice;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/widgets/IOnLeftRightChoice;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/csipsimple/widgets/AlternateUnlocker;->onTriggerListener:Lcom/csipsimple/widgets/IOnLeftRightChoice;

    .line 71
    return-void
.end method
