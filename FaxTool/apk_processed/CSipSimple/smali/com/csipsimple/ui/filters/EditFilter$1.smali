.class Lcom/csipsimple/ui/filters/EditFilter$1;
.super Ljava/lang/Object;
.source "EditFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/filters/EditFilter;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/filters/EditFilter;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/filters/EditFilter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/filters/EditFilter$1;->this$0:Lcom/csipsimple/ui/filters/EditFilter;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter$1;->this$0:Lcom/csipsimple/ui/filters/EditFilter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter$1;->this$0:Lcom/csipsimple/ui/filters/EditFilter;

    invoke-virtual {v2}, Lcom/csipsimple/ui/filters/EditFilter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/ui/filters/EditFilter;->setResult(ILandroid/content/Intent;)V

    .line 114
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter$1;->this$0:Lcom/csipsimple/ui/filters/EditFilter;

    invoke-virtual {v0}, Lcom/csipsimple/ui/filters/EditFilter;->finish()V

    .line 115
    return-void
.end method
