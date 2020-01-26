.class Lcom/csipsimple/ui/calllog/CallLogListFragment$2$1;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/calllog/CallLogListFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/ui/calllog/CallLogListFragment$2;

.field private final synthetic val$checkedPos:I

.field private final synthetic val$selectedIds:[J


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/calllog/CallLogListFragment$2;I[J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$2$1;->this$1:Lcom/csipsimple/ui/calllog/CallLogListFragment$2;

    iput p2, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$2$1;->val$checkedPos:I

    iput-object p3, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$2$1;->val$selectedIds:[J

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$2$1;->this$1:Lcom/csipsimple/ui/calllog/CallLogListFragment$2;

    invoke-static {v0}, Lcom/csipsimple/ui/calllog/CallLogListFragment$2;->access$0(Lcom/csipsimple/ui/calllog/CallLogListFragment$2;)Lcom/csipsimple/ui/calllog/CallLogListFragment;

    move-result-object v0

    iget v1, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$2$1;->val$checkedPos:I

    iget-object v2, p0, Lcom/csipsimple/ui/calllog/CallLogListFragment$2$1;->val$selectedIds:[J

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/ui/calllog/CallLogListFragment;->viewDetails(I[J)V

    .line 186
    return-void
.end method
