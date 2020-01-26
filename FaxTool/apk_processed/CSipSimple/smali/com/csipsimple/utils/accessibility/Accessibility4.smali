.class public Lcom/csipsimple/utils/accessibility/Accessibility4;
.super Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;
.source "Accessibility4.java"


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/utils/accessibility/Accessibility4;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 27
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/csipsimple/utils/accessibility/Accessibility4;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/csipsimple/utils/accessibility/Accessibility4;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 36
    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/csipsimple/utils/accessibility/Accessibility4;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method
