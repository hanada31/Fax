.class Lcom/csipsimple/ui/SipHome$2;
.super Ljava/lang/Thread;
.source "SipHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/SipHome;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome$2;->this$0:Lcom/csipsimple/ui/SipHome;

    .line 207
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$2;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-static {v0}, Lcom/csipsimple/ui/SipHome;->access$3(Lcom/csipsimple/ui/SipHome;)V

    .line 210
    return-void
.end method
