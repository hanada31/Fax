.class Lcom/csipsimple/wizards/BasePrefsWizard$2;
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
    iput-object p1, p0, Lcom/csipsimple/wizards/BasePrefsWizard$2;->this$0:Lcom/csipsimple/wizards/BasePrefsWizard;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/csipsimple/wizards/BasePrefsWizard$2;->this$0:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->saveAndFinish()V

    .line 92
    return-void
.end method
