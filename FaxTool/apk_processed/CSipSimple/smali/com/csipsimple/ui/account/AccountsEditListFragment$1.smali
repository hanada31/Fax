.class Lcom/csipsimple/ui/account/AccountsEditListFragment$1;
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
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$1;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$1;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->access$1(Lcom/csipsimple/ui/account/AccountsEditListFragment;)V

    .line 176
    const/4 v0, 0x1

    return v0
.end method
