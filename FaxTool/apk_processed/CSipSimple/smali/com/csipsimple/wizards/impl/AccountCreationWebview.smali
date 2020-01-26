.class public Lcom/csipsimple/wizards/impl/AccountCreationWebview;
.super Ljava/lang/Object;
.source "AccountCreationWebview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;,
        Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;
    }
.end annotation


# instance fields
.field private creationListener:Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private final parent:Lcom/csipsimple/wizards/BasePrefsWizard;

.field private settingsContainer:Landroid/view/ViewGroup;

.field private validationBar:Landroid/view/ViewGroup;

.field private webCreationPage:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/BasePrefsWizard;Ljava/lang/String;Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;)V
    .locals 6
    .param p1, "aParent"    # Lcom/csipsimple/wizards/BasePrefsWizard;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    .line 51
    iput-object p3, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->creationListener:Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

    .line 52
    iput-object p2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webCreationPage:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v3, 0x7f060106

    invoke-virtual {v2, v3}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;

    .line 55
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    const v3, 0x7f0600eb

    invoke-virtual {v2, v3}, Lcom/csipsimple/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->validationBar:Landroid/view/ViewGroup;

    .line 57
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    .local v0, "globalContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    invoke-virtual {v2}, Lcom/csipsimple/wizards/BasePrefsWizard;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005b

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v2, 0x7f060093

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    .line 62
    const v2, 0x7f060105

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 64
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 65
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 66
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 67
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 69
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 71
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;

    invoke-direct {v3, p0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview$JSInterface;-><init>(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)V

    const-string v4, "CSipSimpleWizard"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/csipsimple/wizards/impl/AccountCreationWebview$1;

    invoke-direct {v3, p0}, Lcom/csipsimple/wizards/impl/AccountCreationWebview$1;-><init>(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->validationBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->creationListener:Lcom/csipsimple/wizards/impl/AccountCreationWebview$OnAccountCreationDoneListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Lcom/csipsimple/wizards/BasePrefsWizard;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->parent:Lcom/csipsimple/wizards/BasePrefsWizard;

    return-object v0
.end method

.method static synthetic access$5(Lcom/csipsimple/wizards/impl/AccountCreationWebview;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public show()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 132
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->validationBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webCreationPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 137
    return-void
.end method
