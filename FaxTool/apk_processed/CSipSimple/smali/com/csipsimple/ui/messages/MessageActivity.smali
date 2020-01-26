.class public Lcom/csipsimple/ui/messages/MessageActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "MessageActivity.java"

# interfaces
.implements Lcom/csipsimple/ui/messages/MessageFragment$OnQuitListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Lcom/csipsimple/ui/messages/MessageFragment;

    invoke-direct {v0}, Lcom/csipsimple/ui/messages/MessageFragment;-><init>()V

    .line 47
    .local v0, "detailFragment":Lcom/csipsimple/ui/messages/MessageFragment;
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/MessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/messages/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/MessageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 50
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 51
    invoke-virtual {v0, p0}, Lcom/csipsimple/ui/messages/MessageFragment;->setOnQuitListener(Lcom/csipsimple/ui/messages/MessageFragment$OnQuitListener;)V

    .line 53
    .end local v0    # "detailFragment":Lcom/csipsimple/ui/messages/MessageFragment;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lcom/csipsimple/utils/Compatibility;->getHomeMenuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/MessageActivity;->finish()V

    .line 65
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQuit()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/MessageActivity;->finish()V

    .line 74
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/csipsimple/ui/messages/MessageActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    return-void
.end method
