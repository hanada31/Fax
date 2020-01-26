.class public Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;
.super Ljava/lang/Object;
.source "ShortcutWidgetConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/widgets/ShortcutWidgetConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shortcut"
.end annotation


# instance fields
.field iconRes:I

.field intent:Landroid/content/Intent;

.field nameRes:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "aName"    # I
    .param p2, "anIcon"    # I
    .param p3, "anIntent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;->nameRes:I

    .line 60
    iput p2, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;->iconRes:I

    .line 61
    iput-object p3, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;->intent:Landroid/content/Intent;

    .line 62
    return-void
.end method
