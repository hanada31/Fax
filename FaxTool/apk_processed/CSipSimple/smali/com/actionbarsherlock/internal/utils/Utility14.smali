.class public Lcom/actionbarsherlock/internal/utils/Utility14;
.super Lcom/actionbarsherlock/internal/utils/Utility11;
.source "Utility14.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/utils/Utility11;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1
    .param p1, "vcfg"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    return v0
.end method

.method public setLinearLayoutDividerPadding(Landroid/widget/LinearLayout;I)V
    .locals 0
    .param p1, "l"    # Landroid/widget/LinearLayout;
    .param p2, "padding"    # I

    .prologue
    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 40
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/utils/Utility11;->setLinearLayoutDividerPadding(Landroid/widget/LinearLayout;I)V

    .line 41
    return-void
.end method
