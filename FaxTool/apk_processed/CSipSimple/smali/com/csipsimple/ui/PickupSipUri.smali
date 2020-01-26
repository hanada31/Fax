.class public Lcom/csipsimple/ui/PickupSipUri;
.super Landroid/app/Activity;
.source "PickupSipUri.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private okBtn:Landroid/widget/Button;

.field private sipUri:Lcom/csipsimple/widgets/EditSipUri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/PickupSipUri;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/csipsimple/ui/PickupSipUri;->sendPositiveResult()V

    return-void
.end method

.method private sendPositiveResult()V
    .locals 6

    .prologue
    .line 98
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v3, "resultValue":Landroid/content/Intent;
    iget-object v4, p0, Lcom/csipsimple/ui/PickupSipUri;->sipUri:Lcom/csipsimple/widgets/EditSipUri;

    invoke-virtual {v4}, Lcom/csipsimple/widgets/EditSipUri;->getValue()Lcom/csipsimple/widgets/EditSipUri$ToCall;

    move-result-object v2

    .line 100
    .local v2, "result":Lcom/csipsimple/widgets/EditSipUri$ToCall;
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/csipsimple/ui/PickupSipUri;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 103
    .local v1, "it":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    .line 110
    invoke-virtual {v2}, Lcom/csipsimple/widgets/EditSipUri$ToCall;->getCallee()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v4, "id"

    .line 112
    invoke-virtual {v2}, Lcom/csipsimple/widgets/EditSipUri$ToCall;->getAccountId()Ljava/lang/Long;

    move-result-object v5

    .line 111
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/csipsimple/ui/PickupSipUri;->setResult(ILandroid/content/Intent;)V

    .line 117
    .end local v1    # "it":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/PickupSipUri;->finish()V

    .line 118
    return-void

    .line 115
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/csipsimple/ui/PickupSipUri;->setResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 89
    .local v0, "vId":I
    const v1, 0x7f0600e1

    if-ne v0, v1, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/csipsimple/ui/PickupSipUri;->sendPositiveResult()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const v1, 0x7f0600e0

    if-ne v0, v1, :cond_0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/PickupSipUri;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/csipsimple/ui/PickupSipUri;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v1, 0x7f030048

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/PickupSipUri;->setContentView(I)V

    .line 63
    const v1, 0x7f0600e1

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/PickupSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/csipsimple/ui/PickupSipUri;->okBtn:Landroid/widget/Button;

    .line 64
    iget-object v1, p0, Lcom/csipsimple/ui/PickupSipUri;->okBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f0600e0

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/PickupSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0600df

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/PickupSipUri;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/widgets/EditSipUri;

    iput-object v1, p0, Lcom/csipsimple/ui/PickupSipUri;->sipUri:Lcom/csipsimple/widgets/EditSipUri;

    .line 70
    iget-object v1, p0, Lcom/csipsimple/ui/PickupSipUri;->sipUri:Lcom/csipsimple/widgets/EditSipUri;

    invoke-virtual {v1}, Lcom/csipsimple/widgets/EditSipUri;->getTextField()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/csipsimple/ui/PickupSipUri$1;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/PickupSipUri$1;-><init>(Lcom/csipsimple/ui/PickupSipUri;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 80
    iget-object v1, p0, Lcom/csipsimple/ui/PickupSipUri;->sipUri:Lcom/csipsimple/widgets/EditSipUri;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/csipsimple/widgets/EditSipUri;->setShowExternals(Z)V

    .line 83
    return-void
.end method
