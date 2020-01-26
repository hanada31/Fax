.class Lcom/csipsimple/ui/messages/MessageFragment$1;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/messages/MessageFragment;
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
    iput-object p1, p0, Lcom/csipsimple/ui/messages/MessageFragment$1;->this$0:Lcom/csipsimple/ui/messages/MessageFragment;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/csipsimple/ui/messages/MessageFragment$1;->this$0:Lcom/csipsimple/ui/messages/MessageFragment;

    invoke-static {p2}, Lcom/csipsimple/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/csipsimple/api/ISipService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/ui/messages/MessageFragment;->access$1(Lcom/csipsimple/ui/messages/MessageFragment;Lcom/csipsimple/api/ISipService;)V

    .line 209
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/csipsimple/ui/messages/MessageFragment$1;->this$0:Lcom/csipsimple/ui/messages/MessageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csipsimple/ui/messages/MessageFragment;->access$1(Lcom/csipsimple/ui/messages/MessageFragment;Lcom/csipsimple/api/ISipService;)V

    .line 214
    return-void
.end method
