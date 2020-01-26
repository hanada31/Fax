.class Lcom/actionbarsherlock/widget/ActivityChooserView$SetActivated;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetActivated"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invoke(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activated"    # Z

    .prologue
    .line 618
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->viewSetActivated(Landroid/view/View;Z)V

    .line 619
    return-void
.end method
