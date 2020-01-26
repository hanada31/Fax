.class public Lcom/actionbarsherlock/internal/utils/Utility5;
.super Lcom/actionbarsherlock/internal/utils/Utility4;
.source "Utility5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/utils/Utility4;-><init>()V

    return-void
.end method


# virtual methods
.method public isLongPressEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    return v0
.end method
