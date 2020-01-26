.class Lcom/csipsimple/ui/messages/ConversationsListFragment$2;
.super Ljava/lang/Object;
.source "ConversationsListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/messages/ConversationsListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/messages/ConversationsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$2;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$2;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->access$0(Lcom/csipsimple/ui/messages/ConversationsListFragment;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method
