.class Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;
.super Ljava/lang/Object;
.source "ConversationsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/ui/messages/ConversationsListFragment$5;

.field private final synthetic val$checkedPos:I

.field private final synthetic val$fromFull:Ljava/lang/String;

.field private final synthetic val$nbr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/messages/ConversationsListFragment$5;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;->this$1:Lcom/csipsimple/ui/messages/ConversationsListFragment$5;

    iput p2, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;->val$checkedPos:I

    iput-object p3, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;->val$nbr:Ljava/lang/String;

    iput-object p4, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;->val$fromFull:Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;->this$1:Lcom/csipsimple/ui/messages/ConversationsListFragment$5;

    invoke-static {v0}, Lcom/csipsimple/ui/messages/ConversationsListFragment$5;->access$0(Lcom/csipsimple/ui/messages/ConversationsListFragment$5;)Lcom/csipsimple/ui/messages/ConversationsListFragment;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;->val$checkedPos:I

    iget-object v2, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;->val$nbr:Ljava/lang/String;

    iget-object v3, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$5$1;->val$fromFull:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->viewDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method
