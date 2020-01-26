.class Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;
.super Ljava/lang/Thread;
.source "OutgoingCallListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginCallRunnable"
.end annotation


# instance fields
.field private delay:J

.field private pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;Landroid/app/PendingIntent;J)V
    .locals 0
    .param p2, "pi"    # Landroid/app/PendingIntent;
    .param p3, "d"    # J

    .prologue
    .line 146
    iput-object p1, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->this$0:Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->pendingIntent:Landroid/app/PendingIntent;

    .line 148
    iput-wide p3, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->delay:J

    .line 149
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 153
    iget-wide v2, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->delay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 155
    :try_start_0
    iget-wide v2, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->delay:J

    invoke-static {v2, v3}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->this$0:Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;

    invoke-virtual {v2}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;

    .line 162
    .local v1, "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    :try_start_1
    iget-object v2, p0, Lcom/csipsimple/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;->finishServiceIfNeeded(Z)V

    .line 167
    return-void

    .line 156
    .end local v1    # "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "OutgoingCallListFragment"

    const-string v3, "Thread that fires outgoing call has been interrupted"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "superActivity":Lcom/csipsimple/ui/outgoingcall/OutgoingCallChooser;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "OutgoingCallListFragment"

    const-string v3, "Pending intent cancelled"

    invoke-static {v2, v3, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
