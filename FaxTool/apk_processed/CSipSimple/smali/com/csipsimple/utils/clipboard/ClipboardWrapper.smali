.class public abstract Lcom/csipsimple/utils/clipboard/ClipboardWrapper;
.super Ljava/lang/Object;
.source "ClipboardWrapper.java"


# static fields
.field private static instance:Lcom/csipsimple/utils/clipboard/ClipboardWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/csipsimple/utils/clipboard/ClipboardWrapper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;->instance:Lcom/csipsimple/utils/clipboard/ClipboardWrapper;

    if-nez v0, :cond_0

    .line 37
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/csipsimple/utils/clipboard/Clipboard11;

    invoke-direct {v0}, Lcom/csipsimple/utils/clipboard/Clipboard11;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;->instance:Lcom/csipsimple/utils/clipboard/ClipboardWrapper;

    .line 42
    :goto_0
    sget-object v0, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;->instance:Lcom/csipsimple/utils/clipboard/ClipboardWrapper;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;->instance:Lcom/csipsimple/utils/clipboard/ClipboardWrapper;

    invoke-virtual {v0, p0}, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;->setContext(Landroid/content/Context;)V

    .line 47
    :cond_0
    sget-object v0, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;->instance:Lcom/csipsimple/utils/clipboard/ClipboardWrapper;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/csipsimple/utils/clipboard/Clipboard1;

    invoke-direct {v0}, Lcom/csipsimple/utils/clipboard/Clipboard1;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/clipboard/ClipboardWrapper;->instance:Lcom/csipsimple/utils/clipboard/ClipboardWrapper;

    goto :goto_0
.end method


# virtual methods
.method protected abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setText(Ljava/lang/String;Ljava/lang/String;)V
.end method
