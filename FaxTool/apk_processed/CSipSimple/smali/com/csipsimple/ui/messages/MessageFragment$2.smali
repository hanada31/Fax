.class Lcom/csipsimple/ui/messages/MessageFragment$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/messages/MessageFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/messages/MessageFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/messages/MessageFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/messages/MessageFragment$2;->this$0:Lcom/csipsimple/ui/messages/MessageFragment;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 317
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/csipsimple/ui/messages/MessageFragment$2;->this$0:Lcom/csipsimple/ui/messages/MessageFragment;

    invoke-static {v3}, Lcom/csipsimple/ui/messages/MessageFragment;->access$2(Lcom/csipsimple/ui/messages/MessageFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/csipsimple/ui/messages/MessageFragment$2;->this$0:Lcom/csipsimple/ui/messages/MessageFragment;

    invoke-virtual {v1, v0}, Lcom/csipsimple/ui/messages/MessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 319
    const/4 v1, 0x1

    return v1
.end method
