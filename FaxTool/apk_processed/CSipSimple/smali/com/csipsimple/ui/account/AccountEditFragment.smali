.class public Lcom/csipsimple/ui/account/AccountEditFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "AccountEditFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public static newInstance(J)Lcom/csipsimple/ui/account/AccountEditFragment;
    .locals 3
    .param p0, "profileId"    # J

    .prologue
    .line 32
    new-instance v1, Lcom/csipsimple/ui/account/AccountEditFragment;

    invoke-direct {v1}, Lcom/csipsimple/ui/account/AccountEditFragment;-><init>()V

    .line 35
    .local v1, "f":Lcom/csipsimple/ui/account/AccountEditFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/csipsimple/ui/account/AccountEditFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method
