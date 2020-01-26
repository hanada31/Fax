.class Lcom/csipsimple/ui/calllog/CallLogListFragment$3;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/calllog/CallLogListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$3;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$3;->this$0:Lcom/csipsimple/ui/calllog/CallLogListFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->access$7(Lcom/csipsimple/ui/calllog/CallLogListFragment;)V

    .line 213
    const/4 v0, 0x1

    return v0
.end method
