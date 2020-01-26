.class Lcom/csipsimple/ui/calllog/CallLogListFragment$1;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/calllog/CallLogListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$1;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "ad":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 123
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$1;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->access$4(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    .line 124
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$1;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-virtual {v0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 125
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$1;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->access$5(Lcom/csipsimple/ui/calllog/CallLogListFragment;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->invalidate()V

    .line 126
    return v1
.end method
