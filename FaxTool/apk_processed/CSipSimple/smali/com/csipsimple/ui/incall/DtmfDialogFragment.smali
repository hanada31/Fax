.class public Lcom/csipsimple/ui/incall/DtmfDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "DtmfDialogFragment.java"

# interfaces
.implements Lcom/csipsimple/widgets/Dialpad$OnDialKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/incall/DtmfDialogFragment$OnDtmfListener;
    }
.end annotation


# static fields
.field private static final EXTRA_CALL_ID:Ljava/lang/String; = "call_id"

.field private static final THIS_FILE:Ljava/lang/String; = "DtmfDialogFragment"


# instance fields
.field private dialPadTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/csipsimple/ui/incall/DtmfDialogFragment;
    .locals 3
    .param p0, "callId"    # I

    .prologue
    .line 49
    new-instance v1, Lcom/csipsimple/ui/incall/DtmfDialogFragment;

    invoke-direct {v1}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;-><init>()V

    .line 50
    .local v1, "instance":Lcom/csipsimple/ui/incall/DtmfDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "call_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public getCustomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v2, 0x7f03003d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f060081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/widgets/Dialpad;

    .line 78
    .local v0, "dialPad":Lcom/csipsimple/widgets/Dialpad;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/csipsimple/widgets/Dialpad;->setForceWidth(Z)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/csipsimple/widgets/Dialpad;->setOnDialKeyListener(Lcom/csipsimple/widgets/Dialpad$OnDialKeyListener;)V

    .line 80
    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->dialPadTextView:Landroid/widget/TextView;

    .line 81
    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->getCustomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    const v1, 0x7f0b006e

    new-instance v2, Lcom/csipsimple/ui/incall/DtmfDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/incall/DtmfDialogFragment$1;-><init>(Lcom/csipsimple/ui/incall/DtmfDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method public onTrigger(II)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "dialTone"    # I

    .prologue
    .line 90
    iget-object v4, p0, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->dialPadTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 92
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v1, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 93
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v2

    .line 94
    .local v2, "nbr":C
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->dialPadTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 95
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    iget-object v4, p0, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->dialPadTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v2    # "nbr":C
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/csipsimple/ui/incall/DtmfDialogFragment$OnDtmfListener;

    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "call_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    .local v0, "callId":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/csipsimple/ui/incall/DtmfDialogFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/csipsimple/ui/incall/DtmfDialogFragment$OnDtmfListener;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5, p1, p2}, Lcom/csipsimple/ui/incall/DtmfDialogFragment$OnDtmfListener;->OnDtmf(III)V

    .line 107
    .end local v0    # "callId":Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-void

    .line 103
    .restart local v0    # "callId":Ljava/lang/Integer;
    :cond_2
    const-string v4, "DtmfDialogFragment"

    const-string v5, "Impossible to find the call associated to this view"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
