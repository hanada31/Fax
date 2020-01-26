.class Lcom/csipsimple/wizards/impl/Zadarma$AccountBalance;
.super Lcom/csipsimple/wizards/impl/AccountBalanceHelper;
.source "Zadarma.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Zadarma;
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
            "Lcom/csipsimple/wizards/impl/Zadarma;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Zadarma;)V
    .locals 1
    .param p1, "wizard"    # Lcom/csipsimple/wizards/impl/Zadarma;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Zadarma$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    .line 150
    return-void
.end method


# virtual methods
.method public applyResultError()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Zadarma$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Zadarma;

    .line 188
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Zadarma;
    if-eqz v0, :cond_0

    .line 189
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Zadarma;->access$0(Lcom/csipsimple/wizards/impl/Zadarma;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    :cond_0
    return-void
.end method

.method public applyResultSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "balanceText"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Zadarma$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Zadarma;

    .line 199
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Zadarma;
    if-eqz v0, :cond_0

    .line 200
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Zadarma;->access$1(Lcom/csipsimple/wizards/impl/Zadarma;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Zadarma;->access$0(Lcom/csipsimple/wizards/impl/Zadarma;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public getRequest(Lcom/csipsimple/api/SipProfile;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 3
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://ss.zadarma.com/android/getbalance/?login="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    const-string v2, "&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/csipsimple/utils/MD5;->MD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
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

    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 173
    .local v1, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 174
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

    const-string v3, " USD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 179
    .end local v1    # "value":F
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ZadarmaW"

    const-string v3, "Can\'t get value for line"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
