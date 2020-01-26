.class public Lcom/actionbarsherlock/internal/utils/Utility16;
.super Lcom/actionbarsherlock/internal/utils/Utility14;
.source "Utility16.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/utils/Utility14;-><init>()V

    return-void
.end method


# virtual methods
.method public setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method
