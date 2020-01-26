.class Lcom/csipsimple/ui/incall/InCallCard$ContactLoadedHandler;
.super Landroid/os/Handler;
.source "InCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/incall/InCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactLoadedHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/ui/incall/InCallCard$ContactLoadedHandler;)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/csipsimple/ui/incall/InCallCard$ContactLoadedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 462
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 463
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;

    .line 464
    .local v0, "lci":Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;
    iget-object v1, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    iget-object v1, v1, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    iget-object v2, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    iget-object v2, v2, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "hiRes"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 469
    :cond_0
    iget-object v1, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/csipsimple/ui/incall/InCallCard;

    invoke-virtual {v1}, Lcom/csipsimple/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 470
    iget-object v2, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/csipsimple/ui/incall/InCallCard;

    invoke-static {v2}, Lcom/csipsimple/ui/incall/InCallCard;->access$5(Lcom/csipsimple/ui/incall/InCallCard;)Landroid/widget/ImageView;

    move-result-object v2

    .line 471
    iget-object v3, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    .line 472
    const v4, 0x7f0200a2

    .line 468
    invoke-static {v1, v2, v3, v4}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V

    .line 473
    iget-object v1, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/csipsimple/ui/incall/InCallCard;

    invoke-static {v1}, Lcom/csipsimple/ui/incall/InCallCard;->access$6(Lcom/csipsimple/ui/incall/InCallCard;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    iget-object v2, v2, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v1, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/csipsimple/ui/incall/InCallCard;

    invoke-static {v1}, Lcom/csipsimple/ui/incall/InCallCard;->access$5(Lcom/csipsimple/ui/incall/InCallCard;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v0, Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/csipsimple/models/CallerInfo;

    iget-object v2, v2, Lcom/csipsimple/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 477
    .end local v0    # "lci":Lcom/csipsimple/ui/incall/InCallCard$LoadCallerInfoMessage;
    :cond_1
    return-void
.end method
