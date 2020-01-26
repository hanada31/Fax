.class Lcom/csipsimple/widgets/AccountChooserButton$2;
.super Ljava/lang/Object;
.source "AccountChooserButton.java"

# interfaces
.implements Lcom/csipsimple/utils/CallHandlerPlugin$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/widgets/AccountChooserButton;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/widgets/AccountChooserButton;


# direct methods
.method constructor <init>(Lcom/csipsimple/widgets/AccountChooserButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/widgets/AccountChooserButton$2;->this$0:Lcom/csipsimple/widgets/AccountChooserButton;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/widgets/AccountChooserButton$2;)Lcom/csipsimple/widgets/AccountChooserButton;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton$2;->this$0:Lcom/csipsimple/widgets/AccountChooserButton;

    return-object v0
.end method


# virtual methods
.method public onLoad(Lcom/csipsimple/utils/CallHandlerPlugin;)V
    .locals 4
    .param p1, "ch"    # Lcom/csipsimple/utils/CallHandlerPlugin;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/csipsimple/widgets/AccountChooserButton$2;->this$0:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-static {v0}, Lcom/csipsimple/widgets/AccountChooserButton;->access$1(Lcom/csipsimple/widgets/AccountChooserButton;)Lcom/csipsimple/widgets/HorizontalQuickActionWindow;

    move-result-object v0

    invoke-virtual {p1}, Lcom/csipsimple/utils/CallHandlerPlugin;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/csipsimple/utils/CallHandlerPlugin;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v3, Lcom/csipsimple/widgets/AccountChooserButton$2$1;

    invoke-direct {v3, p0, p1}, Lcom/csipsimple/widgets/AccountChooserButton$2$1;-><init>(Lcom/csipsimple/widgets/AccountChooserButton$2;Lcom/csipsimple/utils/CallHandlerPlugin;)V

    .line 244
    invoke-virtual {v0, v1, v2, v3}, Lcom/csipsimple/widgets/HorizontalQuickActionWindow;->addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 252
    return-void
.end method
