.class public abstract Lcom/csipsimple/widgets/CSSListFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "CSSListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mListContainer:Landroid/view/View;

.field private mListShown:Z

.field private mProgressContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    .line 51
    iput-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mProgressContainer:Landroid/view/View;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListShown:Z

    .line 45
    return-void
.end method

.method private ensureCustomList()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/widgets/CSSListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/csipsimple/widgets/CSSListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mProgressContainer:Landroid/view/View;

    goto :goto_0
.end method

.method private setListShown(ZZ)V
    .locals 5
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Lcom/csipsimple/widgets/CSSListFragment;->ensureCustomList()V

    .line 65
    iget-boolean v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iput-boolean p1, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListShown:Z

    .line 69
    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 70
    if-eqz p1, :cond_3

    .line 71
    if-eqz p2, :cond_2

    .line 72
    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/CSSListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_3
    if-eqz p2, :cond_4

    .line 78
    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/csipsimple/widgets/CSSListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract changeCursor(Landroid/database/Cursor;)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListShown:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/widgets/CSSListFragment;->mListContainer:Landroid/view/View;

    .line 134
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public abstract onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, p2}, Lcom/csipsimple/widgets/CSSListFragment;->changeCursor(Landroid/database/Cursor;)V

    .line 106
    invoke-virtual {p0}, Lcom/csipsimple/widgets/CSSListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/CSSListFragment;->setListShown(Z)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/CSSListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/support/v4/content/Loader;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/csipsimple/widgets/CSSListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/CSSListFragment;->changeCursor(Landroid/database/Cursor;)V

    .line 119
    return-void
.end method

.method public setListShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/CSSListFragment;->setListShown(ZZ)V

    .line 56
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/csipsimple/widgets/CSSListFragment;->setListShown(ZZ)V

    .line 61
    return-void
.end method
