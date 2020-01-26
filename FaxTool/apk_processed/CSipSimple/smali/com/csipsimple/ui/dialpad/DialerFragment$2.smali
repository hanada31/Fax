.class Lcom/csipsimple/ui/dialpad/DialerFragment$2;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/dialpad/DialerFragment;
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
    iput-object p1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$2;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 349
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$2;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-virtual {v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->placeCall()V

    .line 351
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
