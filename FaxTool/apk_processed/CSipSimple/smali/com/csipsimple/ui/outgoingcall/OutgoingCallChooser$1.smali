.class Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser$1;
.super Ljava/lang/Object;
.source "OutgoingCallChooser.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser$1;->this$0:Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser$1;->this$0:Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;

    invoke-static {p2}, Lcom/csipsimple/api/ISipService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/csipsimple/api/ISipService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->access$0(Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;Lcom/csipsimple/api/ISipService;)V

    .line 188
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser$1;->this$0:Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->access$0(Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;Lcom/csipsimple/api/ISipService;)V

    .line 193
    return-void
.end method
