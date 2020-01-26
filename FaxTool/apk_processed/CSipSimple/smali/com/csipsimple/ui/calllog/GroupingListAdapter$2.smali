.class Lcom/csipsimple/ui/calllog/GroupingListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/calllog/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/calllog/GroupingListAdapter;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/calllog/GroupingListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/GroupingListAdapter$2;->this$0:Lcom/csipsimple/ui/calllog/GroupingListAdapter;

    .line 115
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/GroupingListAdapter$2;->this$0:Lcom/csipsimple/ui/calllog/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/csipsimple/ui/calllog/GroupingListAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/GroupingListAdapter$2;->this$0:Lcom/csipsimple/ui/calllog/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/csipsimple/ui/calllog/GroupingListAdapter;->notifyDataSetInvalidated()V

    .line 125
    return-void
.end method
