.class Lcom/csipsimple/ui/incall/InCallControls$1;
.super Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
.source "InCallControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/incall/InCallControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallControls;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallControls;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallControls$1;->this$0:Lcom/csipsimple/ui/incall/InCallControls;

    .line 78
    invoke-direct {p0, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)V
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->bindItemView(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)V

    move-object v0, p2

    .line 81
    check-cast v0, Landroid/view/View;

    .line 82
    .local v0, "actionItemView":Landroid/view/View;
    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    return-void
.end method
