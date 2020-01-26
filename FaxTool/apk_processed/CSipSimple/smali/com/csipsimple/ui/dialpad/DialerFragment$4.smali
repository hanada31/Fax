.class Lcom/csipsimple/ui/dialpad/DialerFragment$4;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/dialpad/DialerFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$4;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$4;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$4;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-static {v1}, Lcom/csipsimple/ui/dialpad/DialerFragment;->access$2(Lcom/csipsimple/ui/dialpad/DialerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/dialpad/DialerFragment;->setTextDialing(Z)V

    .line 577
    const/4 v0, 0x1

    return v0
.end method
