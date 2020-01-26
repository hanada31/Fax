.class Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$2;
.super Ljava/lang/Object;
.source "CallLogDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->updateData([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;

.field private final synthetic val$mainActionIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$2;->this$0:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;

    iput-object p2, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$2;->val$mainActionIntent:Landroid/content/Intent;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$2;->this$0:Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;

    iget-object v1, p0, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment$2;->val$mainActionIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/csipsimple/ui/calllog/CallLogDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method
