.class Lcom/csipsimple/ui/account/AccountsEditListFragment$5;
.super Ljava/lang/Object;
.source "AccountsEditListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/account/AccountsEditListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$5;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$5;->this$0:Lcom/csipsimple/ui/account/AccountsEditListFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->access$1(Lcom/csipsimple/ui/account/AccountsEditListFragment;)V

    .line 281
    return-void
.end method
