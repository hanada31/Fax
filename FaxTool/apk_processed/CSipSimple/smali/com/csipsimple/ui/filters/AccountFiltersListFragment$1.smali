.class Lcom/csipsimple/ui/filters/AccountFiltersListFragment$1;
.super Ljava/lang/Object;
.source "AccountFiltersListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
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
    iput-object p1, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$1;->this$0:Lcom/csipsimple/ui/filters/AccountFiltersListFragment;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/csipsimple/ui/filters/AccountFiltersListFragment$1;->this$0:Lcom/csipsimple/ui/filters/AccountFiltersListFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/filters/AccountFiltersListFragment;->access$0(Lcom/csipsimple/ui/filters/AccountFiltersListFragment;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
