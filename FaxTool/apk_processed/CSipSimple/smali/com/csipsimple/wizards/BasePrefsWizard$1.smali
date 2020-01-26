.class Lcom/csipsimple/wizards/BasePrefsWizard$1;
.super Ljava/lang/Object;
.source "BasePrefsWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/BasePrefsWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/BasePrefsWizard;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/BasePrefsWizard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/BasePrefsWizard$1;->this$0:Lcom/csipsimple/wizards/BasePrefsWizard;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard$1;->this$0:Lcom/csipsimple/wizards/BasePrefsWizard;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/csipsimple/wizards/BasePrefsWizard$1;->this$0:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->setResult(ILandroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard$1;->this$0:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->finish()V

    .line 83
    return-void
.end method
