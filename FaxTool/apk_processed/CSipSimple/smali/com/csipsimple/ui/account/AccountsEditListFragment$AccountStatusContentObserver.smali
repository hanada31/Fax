.class Lcom/csipsimple/ui/account/AccountsEditListFragment$AccountStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "AccountsEditListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/account/AccountsEditListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/account/AccountsEditListFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$AccountStatusContentObserver;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    .line 88
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 92
    invoke-static {}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accounts status.onChange( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$AccountStatusContentObserver;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-virtual {v0}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method
