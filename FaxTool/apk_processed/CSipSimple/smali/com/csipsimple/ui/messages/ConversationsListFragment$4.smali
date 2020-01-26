.class Lcom/csipsimple/ui/messages/ConversationsListFragment$4;
.super Ljava/lang/Object;
.source "ConversationsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/messages/ConversationsListFragment;->confirmDeleteThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

.field private final synthetic val$from:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/messages/ConversationsListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$4;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    iput-object p2, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$4;->val$from:Ljava/lang/String;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$4;->val$from:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$4;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    invoke-virtual {v1}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/csipsimple/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    sget-object v1, Lcom/csipsimple/api/SipMessage;->THREAD_ID_URI_BASE:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 330
    .local v0, "threadUriBuilder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$4;->val$from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 331
    iget-object v1, p0, Lcom/csipsimple/ui/messages/ConversationsListFragment$4;->this$0:Lcom/csipsimple/ui/messages/ConversationsListFragment;

    invoke-virtual {v1}, Lcom/csipsimple/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
