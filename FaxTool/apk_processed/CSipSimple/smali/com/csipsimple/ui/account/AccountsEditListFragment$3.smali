.class Lcom/csipsimple/ui/account/AccountsEditListFragment$3;
.super Ljava/lang/Object;
.source "AccountsEditListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/account/AccountsEditListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/account/AccountsEditListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/account/AccountsEditListFragment$3;)Lcom/csipsimple/ui/account/AccountsEditListFragment;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 198
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-virtual {v7}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b01e9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v7, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-virtual {v7}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/csipsimple/utils/PreferencesWrapper;->getConfigFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 201
    .local v1, "backupDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "filesNames":[Ljava/lang/String;
    array-length v9, v5

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_1

    .line 208
    .end local v5    # "filesNames":[Ljava/lang/String;
    :cond_0
    new-array v7, v8, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 209
    .local v3, "fItems":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-virtual {v7}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b01e8

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 211
    new-instance v7, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;

    invoke-direct {v7, p0, v1, v3}, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;-><init>(Lcom/csipsimple/ui/account/AccountsEditListFragment$3;Ljava/io/File;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 225
    .local v0, "backupDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 226
    return v10

    .line 203
    .end local v0    # "backupDialog":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "fItems":[Ljava/lang/String;
    .restart local v5    # "filesNames":[Ljava/lang/String;
    :cond_1
    aget-object v4, v5, v7

    .line 204
    .local v4, "fileName":Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
