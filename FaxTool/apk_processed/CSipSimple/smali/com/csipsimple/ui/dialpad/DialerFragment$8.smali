.class Lcom/csipsimple/ui/dialpad/DialerFragment$8;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/dialpad/DialerFragment;->placeVMCall()V
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
    iput-object p1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$8;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 734
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$8;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->access$4(Lcom/csipsimple/ui/dialpad/DialerFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$8;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-static {v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->access$4(Lcom/csipsimple/ui/dialpad/DialerFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 737
    :cond_0
    return-void
.end method
