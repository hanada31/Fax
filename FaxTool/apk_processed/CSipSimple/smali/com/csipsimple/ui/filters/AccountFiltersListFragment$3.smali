.class Lcom/csipsimple/ui/filters/AccountFiltersListFragment$3;
.super Ljava/lang/Object;
.source "AccountFiltersListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/filters/AccountFiltersListFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/filters/AccountFiltersListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$3;->this$0:Lcom/csipsimple/ui/filters/AccountFiltersListFragment;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$3;->this$0:Lcom/csipsimple/ui/filters/AccountFiltersListFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->access$0(Lcom/csipsimple/ui/filters/AccountFiltersListFragment;)V

    .line 207
    return-void
.end method
