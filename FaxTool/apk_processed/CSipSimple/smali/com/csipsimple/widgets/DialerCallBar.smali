.class public Lcom/csipsimple/widgets/DialerCallBar;
.super Landroid/widget/LinearLayout;
.source "DialerCallBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;
    }
.end annotation


# instance fields
.field private actionListener:Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/csipsimple/widgets/DialerCallBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/csipsimple/widgets/DialerCallBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const v6, 0x7f060080

    const/4 v5, 0x1

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 70
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03002c

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    const v4, 0x7f06007c

    invoke-virtual {p0, v4}, Lcom/csipsimple/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v4, 0x7f06007e

    invoke-virtual {p0, v4}, Lcom/csipsimple/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0, v6}, Lcom/csipsimple/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v6}, Lcom/csipsimple/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DialerCallBar;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/csipsimple/widgets/DialerCallBar;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 89
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 79
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/DialerCallBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 81
    .local v3, "w":I
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 82
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 83
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 85
    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/DialerCallBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/csipsimple/widgets/DialerCallBar;->actionListener:Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 120
    .local v0, "viewId":I
    const v1, 0x7f06007c

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/csipsimple/widgets/DialerCallBar;->actionListener:Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;

    invoke-interface {v1}, Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;->placeVideoCall()V

    .line 128
    .end local v0    # "viewId":I
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0    # "viewId":I
    :cond_1
    const v1, 0x7f06007e

    if-ne v0, v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/csipsimple/widgets/DialerCallBar;->actionListener:Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;

    invoke-interface {v1}, Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;->placeCall()V

    goto :goto_0

    .line 124
    :cond_2
    const v1, 0x7f060080

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/csipsimple/widgets/DialerCallBar;->actionListener:Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;

    invoke-interface {v1}, Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;->deleteChar()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lcom/csipsimple/widgets/DialerCallBar;->actionListener:Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 134
    .local v0, "viewId":I
    const v2, 0x7f060080

    if-ne v0, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/csipsimple/widgets/DialerCallBar;->actionListener:Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;

    invoke-interface {v2}, Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;->deleteAll()V

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 137
    const/4 v1, 0x1

    .line 140
    .end local v0    # "viewId":I
    :cond_0
    return v1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    const v0, 0x7f06007e

    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    return-void
.end method

.method public setOnDialActionListener(Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/csipsimple/widgets/DialerCallBar;->actionListener:Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;

    .line 97
    return-void
.end method

.method public setVideoEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
