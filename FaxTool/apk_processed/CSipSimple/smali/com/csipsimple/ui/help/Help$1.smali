.class Lcom/csipsimple/ui/help/Help$1;
.super Ljava/lang/Object;
.source "Help.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/help/Help;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/help/Help;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/help/Help;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/help/Help$1;->this$0:Lcom/csipsimple/ui/help/Help;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/csipsimple/ui/help/Help$1;->this$0:Lcom/csipsimple/ui/help/Help;

    invoke-virtual {v0}, Lcom/csipsimple/ui/help/Help;->dismiss()V

    .line 107
    return-void
.end method
