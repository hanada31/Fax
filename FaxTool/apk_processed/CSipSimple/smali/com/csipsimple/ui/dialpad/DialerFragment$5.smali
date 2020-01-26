.class Lcom/csipsimple/ui/dialpad/DialerFragment$5;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Lcom/csipsimple/utils/CallHandlerPlugin$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/dialpad/DialerFragment;->placeCallWithOption(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$5;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Lcom/csipsimple/utils/CallHandlerPlugin;)V
    .locals 1
    .param p1, "ch"    # Lcom/csipsimple/utils/CallHandlerPlugin;

    .prologue
    .line 633
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment$5;->this$0:Lcom/csipsimple/ui/dialpad/DialerFragment;

    invoke-static {v0, p1}, Lcom/csipsimple/ui/dialpad/DialerFragment;->access$3(Lcom/csipsimple/ui/dialpad/DialerFragment;Lcom/csipsimple/utils/CallHandlerPlugin;)V

    .line 634
    return-void
.end method
