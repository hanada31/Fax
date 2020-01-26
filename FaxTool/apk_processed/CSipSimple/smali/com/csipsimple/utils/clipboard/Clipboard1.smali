.class public Lcom/csipsimple/utils/clipboard/Clipboard1;
.super Lcom/csipsimple/utils/clipboard/ClipboardWrapper;
.source "Clipboard1.java"


# instance fields
.field private clipboardManager:Landroid/text/ClipboardManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/csipsimple/utils/clipboard/Clipboard1;->clipboardManager:Landroid/text/ClipboardManager;

    .line 36
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/csipsimple/utils/clipboard/Clipboard1;->clipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
