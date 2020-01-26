.class public Lcom/csipsimple/ui/warnings/WarningFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "WarningFragment.java"

# interfaces
.implements Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "WarningFragment"


# instance fields
.field private onWChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

.field private viewContainer:Landroid/view/ViewGroup;

.field private warnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->warnList:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->viewContainer:Landroid/view/ViewGroup;

    .line 41
    return-void
.end method

.method private bindView()V
    .locals 6

    .prologue
    .line 64
    iget-object v2, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->viewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    iget-object v2, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->warnList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    :cond_1
    return-void

    .line 66
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "warn":Ljava/lang/String;
    const-string v3, "WarningFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Add "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " warning"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/csipsimple/ui/warnings/WarningFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/csipsimple/ui/warnings/WarningUtils;->getViewForWarning(Landroid/content/Context;Ljava/lang/String;)Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;

    move-result-object v0

    .line 69
    .local v0, "v":Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p0}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->setOnWarnChangedListener(Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;)V

    .line 71
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/csipsimple/ui/warnings/WarningUtils$WarningBlockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v3, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->viewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0600f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->viewContainer:Landroid/view/ViewGroup;

    .line 59
    invoke-direct {p0}, Lcom/csipsimple/ui/warnings/WarningFragment;->bindView()V

    .line 60
    return-object v0
.end method

.method public onWarningRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "warnKey"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->onWChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->onWChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    invoke-interface {v0, p1}, Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;->onWarningRemoved(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setOnWarningChangedListener(Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;)V
    .locals 0
    .param p1, "onWChangedListener"    # Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->onWChangedListener:Lcom/csipsimple/ui/warnings/WarningUtils$OnWarningChanged;

    .line 91
    return-void
.end method

.method public setWarningList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->warnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Lcom/csipsimple/ui/warnings/WarningFragment;->warnList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-direct {p0}, Lcom/csipsimple/ui/warnings/WarningFragment;->bindView()V

    .line 53
    return-void
.end method
