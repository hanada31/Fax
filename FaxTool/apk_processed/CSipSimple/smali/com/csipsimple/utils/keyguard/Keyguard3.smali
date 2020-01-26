.class public Lcom/csipsimple/utils/keyguard/Keyguard3;
.super Lcom/csipsimple/utils/keyguard/KeyguardWrapper;
.source "Keyguard3.java"


# instance fields
.field private context:Landroid/content/Context;

.field private keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private manageKeyguard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/csipsimple/utils/keyguard/KeyguardWrapper;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->manageKeyguard:Z

    .line 29
    return-void
.end method


# virtual methods
.method public initActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->context:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->context:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->keyguardManager:Landroid/app/KeyguardManager;

    .line 43
    iget-object v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->keyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "com.csipsimple.inCallKeyguard"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 44
    return-void
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->manageKeyguard:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 51
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->manageKeyguard:Z

    .line 56
    iget-object v0, p0, Lcom/csipsimple/utils/keyguard/Keyguard3;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 57
    return-void
.end method
