.class public abstract Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;
.super Ljava/lang/Object;
.source "AccessibilityWrapper.java"


# static fields
.field private static instance:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->instance:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lcom/csipsimple/utils/accessibility/Accessibility4;

    invoke-direct {v0}, Lcom/csipsimple/utils/accessibility/Accessibility4;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->instance:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    .line 41
    :cond_0
    :goto_0
    sget-object v0, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->instance:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/csipsimple/utils/accessibility/Accessibility3;

    invoke-direct {v0}, Lcom/csipsimple/utils/accessibility/Accessibility3;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;->instance:Lcom/csipsimple/utils/accessibility/AccessibilityWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isEnabled()Z
.end method
