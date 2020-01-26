.class public Lcom/csipsimple/utils/clipboard/Clipboard11;
.super Lcom/csipsimple/utils/clipboard/ClipboardWrapper;
.source "Clipboard11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private clipboardManager:Landroid/content/ClipboardManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/csipsimple/utils/clipboard/Clipboard11;->clipboardManager:Landroid/content/ClipboardManager;

    .line 37
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 42
    .local v0, "clip":Landroid/content/ClipData;
    iget-object v1, p0, Lcom/csipsimple/utils/clipboard/Clipboard11;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 43
    return-void
.end method
