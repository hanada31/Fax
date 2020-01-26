.class public Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;
.super Ljava/lang/Object;
.source "AccountCreationWebview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/AccountCreationWebview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;


# direct methods
.method public constructor <init>(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishAccountCreation(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$0(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$1(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$2(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 99
    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$3(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$3(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;->onAccountCreationDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$4(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Lcom/csipsimple/wizards/BasePrefsWizard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/csipsimple/wizards/BasePrefsWizard;->updateValidation()V

    .line 105
    :cond_1
    return-void
.end method

.method public finishAccountCreationAndQuit(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "success"    # Z
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v1}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$0(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/webkit/WebView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v1}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$1(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v1}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$2(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v1}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$3(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$3(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;->onAccountCreationDone(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;->this$0:Lcom/csipsimple/wizards/impl/AccountCreationWebview;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->access$3(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;->saveAndQuit()Z

    move-result v0

    .line 127
    :cond_0
    return v0
.end method
