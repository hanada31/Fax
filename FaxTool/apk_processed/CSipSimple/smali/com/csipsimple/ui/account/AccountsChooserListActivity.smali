.class public abstract Lcom/csipsimple/ui/account/AccountsChooserListActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "AccountsChooserListActivity.java"

# interfaces
.implements Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;


# instance fields
.field private listFragment:Lcom/csipsimple/ui/account/AccountsChooserListFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/account/AccountsChooserListActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsChooserListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f06002d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/account/AccountsChooserListFragment;

    iput-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListActivity;->listFragment:Lcom/csipsimple/ui/account/AccountsChooserListFragment;

    .line 41
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListActivity;->listFragment:Lcom/csipsimple/ui/account/AccountsChooserListFragment;

    invoke-virtual {p0}, Lcom/csipsimple/ui/account/AccountsChooserListActivity;->showInternalAccounts()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->setShowCallHandlerPlugins(Z)V

    .line 42
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsChooserListActivity;->listFragment:Lcom/csipsimple/ui/account/AccountsChooserListFragment;

    invoke-virtual {v0, p0}, Lcom/csipsimple/ui/account/AccountsChooserListFragment;->setOnAccountClickListener(Lcom/csipsimple/ui/account/AccountsChooserListFragment$OnAccountClickListener;)V

    .line 43
    return-void
.end method

.method protected showInternalAccounts()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
