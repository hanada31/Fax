.class Lcom/csipsimple/wizards/impl/AccountCreationWebview$1;
.super Landroid/webkit/WebChromeClient;
.source "AccountCreationWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/AccountCreationWebview;-><init>(Lcom/csipsimple/wizards/BasePrefsWizard;Ljava/lang/String;Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$1;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    .line 74
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 76
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$1;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$5(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$1;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$5(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$1;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$5(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
