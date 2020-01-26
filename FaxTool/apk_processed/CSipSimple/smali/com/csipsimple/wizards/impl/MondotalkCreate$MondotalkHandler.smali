.class Lcom/csipsimple/wizards/impl/MondotalkCreate$MondotalkHandler;
.super Landroid/os/Handler;
.source "MondotalkCreate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/MondotalkCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MondotalkHandler"
.end annotation


# instance fields
.field w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/csipsimple/wizards/impl/MondotalkCreate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/MondotalkCreate;)V
    .locals 1
    .param p1, "wizard"    # Lcom/csipsimple/wizards/impl/MondotalkCreate;

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$MondotalkHandler;->w:Ljava/lang/ref/WeakReference;

    .line 155
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate$MondotalkHandler;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/csipsimple/wizards/impl/MondotalkCreate;

    .line 159
    .local v3, "wizard":Lcom/csipsimple/wizards/impl/MondotalkCreate;
    if-nez v3, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_0
    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$0(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$1(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 165
    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$1(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$0(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$1(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$2(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$3(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 172
    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$3(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 174
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;

    .line 175
    .local v1, "res":Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;
    invoke-virtual {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, "it":Landroid/content/Intent;
    const-string v4, "username"

    iget-object v5, v1, Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;->username:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v4, "data"

    iget-object v5, v1, Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;->password:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->setResult(ILandroid/content/Intent;)V

    .line 179
    invoke-virtual {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->finish()V

    goto :goto_0

    .line 182
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "res":Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;
    :pswitch_2
    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$3(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 183
    invoke-static {v3}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->access$3(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 185
    :cond_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 186
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
