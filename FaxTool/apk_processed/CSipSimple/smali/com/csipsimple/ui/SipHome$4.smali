.class Lcom/csipsimple/ui/SipHome$4;
.super Ljava/lang/Object;
.source "SipHome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/SipHome;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/SipHome;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/SipHome;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome$4;->this$0:Lcom/csipsimple/ui/SipHome;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 799
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$4;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-static {v0}, Lcom/csipsimple/ui/SipHome;->access$5(Lcom/csipsimple/ui/SipHome;)Lcom/csipsimple/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "has_been_quit"

    invoke-virtual {v0, v1, v2}, Lcom/csipsimple/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 800
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$4;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-static {v0, v2}, Lcom/csipsimple/ui/SipHome;->access$6(Lcom/csipsimple/ui/SipHome;Z)V

    .line 801
    return-void
.end method
