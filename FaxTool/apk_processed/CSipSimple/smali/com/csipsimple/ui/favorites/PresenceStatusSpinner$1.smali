.class Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$1;
.super Ljava/lang/Object;
.source "PresenceStatusSpinner.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$1;->this$0:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$1;->this$0:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;

    invoke-static {p2}, Lcom/csipsimple/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/csipsimple/api/ISipService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->access$0(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;Lcom/csipsimple/api/ISipService;)V

    .line 253
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$1;->this$0:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->access$0(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;Lcom/csipsimple/api/ISipService;)V

    .line 258
    return-void
.end method
