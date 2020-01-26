.class Lcom/csipsimple/ui/help/Faq$FaqWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "Faq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/help/Faq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaqWebViewClient"
.end annotation


# instance fields
.field private parentView:Landroid/view/View;

.field final synthetic this$0:Lcom/csipsimple/ui/help/Faq;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/help/Faq;Landroid/view/View;)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/csipsimple/ui/help/Faq$FaqWebViewClient;->this$0:Lcom/csipsimple/ui/help/Faq;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/csipsimple/ui/help/Faq$FaqWebViewClient;->parentView:Landroid/view/View;

    .line 81
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/csipsimple/ui/help/Faq$FaqWebViewClient;->parentView:Landroid/view/View;

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 87
    .local v0, "indicator":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    return-void
.end method
