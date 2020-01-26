.class Lcom/csipsimple/wizards/impl/Ippi$AccountBalance;
.super Lcom/csipsimple/wizards/impl/AccountBalanceHelper;
.source "Ippi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Ippi;
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
            "Lcom/csipsimple/wizards/impl/Ippi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Ippi;)V
    .locals 1
    .param p1, "wizard"    # Lcom/csipsimple/wizards/impl/Ippi;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Ippi$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    .line 120
    return-void
.end method


# virtual methods
.method public applyResultError()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ippi$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Ippi;

    .line 153
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Ippi;
    if-eqz v0, :cond_0

    .line 154
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Ippi;->access$0(Lcom/csipsimple/wizards/impl/Ippi;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public applyResultSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "balanceText"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Ippi$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Ippi;

    .line 161
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Ippi;
    if-eqz v0, :cond_0

    .line 162
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Ippi;->access$1(Lcom/csipsimple/wizards/impl/Ippi;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Ippi;->access$0(Lcom/csipsimple/wizards/impl/Ippi;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public getRequest(Lcom/csipsimple/api/SipProfile;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 5
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://soap.ippi.fr/credit/check_credit.php?login="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    const-string v2, "&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "yyyyMMdd"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/utils/MD5;->MD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "requestURL":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public parseResponseLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 140
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 141
    .local v1, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Credit : "

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

    .line 147
    .end local v1    # "value":F
    :goto_0
    return-object v2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "IppiW"

    const-string v3, "Can\'t get value for line"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
