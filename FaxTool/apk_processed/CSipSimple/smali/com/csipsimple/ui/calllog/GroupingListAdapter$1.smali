.class Lcom/csipsimple/ui/calllog/GroupingListAdapter$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/csipsimple/ui/calllog/GroupingListAdapter;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/GroupingListAdapter$1;->this$0:Lcom/csipsimple/ui/calllog/GroupingListAdapter;

    .line 102
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/GroupingListAdapter$1;->this$0:Lcom/csipsimple/ui/calllog/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/csipsimple/ui/calllog/GroupingListAdapter;->onContentChanged()V

    .line 112
    return-void
.end method
