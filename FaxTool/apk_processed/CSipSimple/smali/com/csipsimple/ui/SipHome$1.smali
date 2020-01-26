.class Lcom/csipsimple/ui/SipHome$1;
.super Ljava/lang/Object;
.source "SipHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/SipHome;
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
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome$1;->this$0:Lcom/csipsimple/ui/SipHome;

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$1;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-static {v0}, Lcom/csipsimple/ui/SipHome;->access$0(Lcom/csipsimple/ui/SipHome;)V

    .line 894
    return-void
.end method
