.class Lcom/csipsimple/wizards/impl/MondotalkCreate$1;
.super Ljava/lang/Thread;
.source "MondotalkCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/MondotalkCreate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/MondotalkCreate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$1;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    .line 102
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$1;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-static {v0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$4(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Z

    .line 105
    return-void
.end method
