.class Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;
.super Ljava/lang/Object;
.source "AccountsEditListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/account/AccountsEditListFragment$3;->onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/csipsimple/ui/account/AccountsEditListFragment$3;

.field private final synthetic val$backupDir:Ljava/io/File;

.field private final synthetic val$fItems:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/account/AccountsEditListFragment$3;Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;->this$1:Lcom/csipsimple/ui/account/AccountsEditListFragment$3;

    iput-object p2, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;->val$backupDir:Ljava/io/File;

    iput-object p3, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;->val$fItems:[Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;->this$1:Lcom/csipsimple/ui/account/AccountsEditListFragment$3;

    invoke-static {v1}, Lcom/csipsimple/ui/account/AccountsEditListFragment$3;->access$0(Lcom/csipsimple/ui/account/AccountsEditListFragment$3;)Lcom/csipsimple/ui/account/AccountsEditListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/utils/SipProfileJson;->saveSipConfiguration(Landroid/content/Context;)Z

    .line 221
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;->val$backupDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;->val$fItems:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "fileToRestore":Ljava/io/File;
    iget-object v1, p0, Lcom/csipsimple/ui/account/AccountsEditListFragment$3$1;->this$1:Lcom/csipsimple/ui/account/AccountsEditListFragment$3;

    invoke-static {v1}, Lcom/csipsimple/ui/account/AccountsEditListFragment$3;->access$0(Lcom/csipsimple/ui/account/AccountsEditListFragment$3;)Lcom/csipsimple/ui/account/AccountsEditListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/csipsimple/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/csipsimple/utils/SipProfileJson;->restoreSipConfiguration(Landroid/content/Context;Ljava/io/File;)Z

    goto :goto_0
.end method
