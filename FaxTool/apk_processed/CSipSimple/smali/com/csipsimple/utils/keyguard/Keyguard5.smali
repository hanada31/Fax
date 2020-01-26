.class public Lcom/csipsimple/utils/keyguard/Keyguard5;
.super Lcom/csipsimple/utils/keyguard/KeyguardWrapper;
.source "Keyguard5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/csipsimple/utils/keyguard/KeyguardWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public initActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v1, 0x80000

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 33
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 35
    return-void
.end method

.method public lock()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
