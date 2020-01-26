.class Lcom/csipsimple/ui/dialpad/DialerFragment$1;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/dialpad/DialerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$1;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$1;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-static {p2}, Lcom/csipsimple/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/csipsimple/api/ISipService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/ui/dialpad/DialerFragment;->access$0(Lcom/csipsimple/ui/dialpad/DialerFragment;Lcom/csipsimple/api/ISipService;)V

    .line 130
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$1;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csipsimple/ui/dialpad/DialerFragment;->access$0(Lcom/csipsimple/ui/dialpad/DialerFragment;Lcom/csipsimple/api/ISipService;)V

    .line 135
    return-void
.end method
