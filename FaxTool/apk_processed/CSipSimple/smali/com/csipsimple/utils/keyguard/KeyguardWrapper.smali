.class public abstract Lcom/csipsimple/utils/keyguard/KeyguardWrapper;
.super Ljava/lang/Object;
.source "KeyguardWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyguardManager(Landroid/app/Activity;)Lcom/csipsimple/utils/keyguard/KeyguardWrapper;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v0, Lcom/csipsimple/utils/keyguard/Keyguard5;

    invoke-direct {v0}, Lcom/csipsimple/utils/keyguard/Keyguard5;-><init>()V

    .line 37
    .local v0, "kw":Lcom/csipsimple/utils/keyguard/KeyguardWrapper;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/csipsimple/utils/keyguard/KeyguardWrapper;->initActivity(Landroid/app/Activity;)V

    .line 38
    return-object v0

    .line 35
    .end local v0    # "kw":Lcom/csipsimple/utils/keyguard/KeyguardWrapper;
    :cond_0
    new-instance v0, Lcom/csipsimple/utils/keyguard/Keyguard3;

    invoke-direct {v0}, Lcom/csipsimple/utils/keyguard/Keyguard3;-><init>()V

    .restart local v0    # "kw":Lcom/csipsimple/utils/keyguard/KeyguardWrapper;
    goto :goto_0
.end method


# virtual methods
.method public abstract initActivity(Landroid/app/Activity;)V
.end method

.method public abstract lock()V
.end method

.method public abstract unlock()V
.end method
