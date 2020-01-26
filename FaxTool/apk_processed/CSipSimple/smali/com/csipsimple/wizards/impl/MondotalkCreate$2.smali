.class Lcom/csipsimple/wizards/impl/MondotalkCreate$2;
.super Ljava/lang/Thread;
.source "MondotalkCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/MondotalkCreate;->onClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    .line 130
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 132
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-static {v2}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$5(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$6(Lcom/csipsimple/wizards/impl/MondotalkCreate;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    iget-object v3, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$7(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$6(Lcom/csipsimple/wizards/impl/MondotalkCreate;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    iget-object v4, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-static {v4}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$8(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$6(Lcom/csipsimple/wizards/impl/MondotalkCreate;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    iget-object v5, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-static {v5}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$9(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$6(Lcom/csipsimple/wizards/impl/MondotalkCreate;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v4

    .line 134
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    iget-object v6, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-static {v6}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$10(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$6(Lcom/csipsimple/wizards/impl/MondotalkCreate;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    iget-object v7, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;->this$0:Lcom/csipsimple/wizards/impl/MondotalkCreate;

    invoke-static {v7}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$11(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$6(Lcom/csipsimple/wizards/impl/MondotalkCreate;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-static/range {v0 .. v6}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$12(Lcom/csipsimple/wizards/impl/MondotalkCreate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    return-void
.end method
