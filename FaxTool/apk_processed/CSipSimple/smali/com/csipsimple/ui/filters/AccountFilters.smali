.class public Lcom/csipsimple/ui/filters/AccountFilters;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "AccountFilters.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "AccountFilters"


# instance fields
.field private accountId:J

.field private listFragment:Lcom/csipsimple/ui/filters/AccountFiltersListFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/csipsimple/ui/filters/AccountFilters;->accountId:J

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v3, -0x1

    .line 42
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFilters;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    const-string v1, "id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/csipsimple/ui/filters/AccountFilters;->accountId:J

    .line 49
    :cond_0
    iget-wide v1, p0, Lcom/csipsimple/ui/filters/AccountFilters;->accountId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 50
    const-string v1, "AccountFilters"

    const-string v2, "You provide an empty account id...."

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFilters;->finish()V

    .line 54
    :cond_1
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/filters/AccountFilters;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFilters;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;

    iput-object v1, p0, Lcom/csipsimple/ui/filters/AccountFilters;->listFragment:Lcom/csipsimple/ui/filters/AccountFiltersListFragment;

    .line 56
    iget-object v1, p0, Lcom/csipsimple/ui/filters/AccountFilters;->listFragment:Lcom/csipsimple/ui/filters/AccountFiltersListFragment;

    iget-wide v2, p0, Lcom/csipsimple/ui/filters/AccountFilters;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->setAccountId(J)V

    .line 57
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFilters;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 61
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getHomeMenuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/AccountFilters;->finish()V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
