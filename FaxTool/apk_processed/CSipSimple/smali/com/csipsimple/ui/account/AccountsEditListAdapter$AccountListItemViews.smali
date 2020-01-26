.class public final Lcom/csipsimple/ui/account/AccountsEditListAdapter$AccountListItemViews;
.super Ljava/lang/Object;
.source "AccountsEditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/account/AccountsEditListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountListItemViews"
.end annotation


# instance fields
.field public activeCheckbox:Landroid/widget/CheckBox;

.field public barOnOff:Landroid/widget/ImageView;

.field public grabber:Landroid/view/View;

.field public indicator:Landroid/view/View;

.field public labelView:Landroid/widget/TextView;

.field public statusView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
