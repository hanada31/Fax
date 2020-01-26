.class Lcom/csipsimple/wizards/impl/Betamax$AccountBalance;
.super Lcom/csipsimple/wizards/impl/AccountBalanceHelper;
.source "Betamax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Betamax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountBalance"
.end annotation


# instance fields
.field w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/csipsimple/wizards/impl/Betamax;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Betamax;)V
    .locals 1
    .param p1, "wizard"    # Lcom/csipsimple/wizards/impl/Betamax;

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;-><init>()V

    .line 431
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Betamax$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    .line 432
    return-void
.end method


# virtual methods
.method public applyResultError()V
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Betamax;

    .line 479
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Betamax;
    if-eqz v0, :cond_0

    .line 480
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Betamax;->access$0(Lcom/csipsimple/wizards/impl/Betamax;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    :cond_0
    return-void
.end method

.method public applyResultSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "balanceText"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Betamax$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Betamax;

    .line 490
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Betamax;
    if-eqz v0, :cond_0

    .line 491
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Betamax;->access$1(Lcom/csipsimple/wizards/impl/Betamax;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Betamax;->access$0(Lcom/csipsimple/wizards/impl/Betamax;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    :cond_0
    return-void
.end method

.method public getRequest(Lcom/csipsimple/api/SipProfile;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 8
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 439
    iget-object v5, p0, Lcom/csipsimple/wizards/impl/Betamax$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/csipsimple/wizards/impl/Betamax;

    .line 440
    .local v3, "wizard":Lcom/csipsimple/wizards/impl/Betamax;
    if-nez v3, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-object v4

    .line 443
    :cond_1
    const-string v1, "https://"

    .line 444
    .local v1, "requestURL":Ljava/lang/String;
    iget-object v5, v3, Lcom/csipsimple/wizards/impl/Betamax;->providerListPref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "provider":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 446
    sget-object v4, Lcom/csipsimple/wizards/impl/Betamax;->providers:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 447
    .local v2, "set":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const-string v6, "sip."

    const-string v7, "www."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/myaccount/getbalance.php"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?username="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&password="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseResponseLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 463
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 464
    .local v1, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Balance : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-double v3, v1

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " euros"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 470
    .end local v1    # "value":F
    :goto_0
    return-object v2

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "BetamaxW"

    const-string v3, "Can\'t get value for line"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
