.class Lcom/csipsimple/ui/incall/DtmfDialogFragment$1;
.super Ljava/lang/Object;
.source "DtmfDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/incall/DtmfDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/DtmfDialogFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/DtmfDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/DtmfDialogFragment$1;->this$0:Lcom/csipsimple/ui/incall/DtmfDialogFragment;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/csipsimple/ui/incall/DtmfDialogFragment$1;->this$0:Lcom/csipsimple/ui/incall/DtmfDialogFragment;

    invoke-virtual {v0}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->dismiss()V

    .line 68
    return-void
.end method
