.class Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;
.super Lcom/csipsimple/wizards/impl/AccountBalanceHelper;
.source "Sipgate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Sipgate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountBalance"
.end annotation


# instance fields
.field p:Ljava/util/regex/Pattern;

.field w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/csipsimple/wizards/impl/Sipgate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Sipgate;)V
    .locals 1
    .param p1, "wizard"    # Lcom/csipsimple/wizards/impl/Sipgate;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;-><init>()V

    .line 177
    const-string v0, "^.*TotalIncludingVat</name><value><double>(.*)</double>.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;->p:Ljava/util/regex/Pattern;

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    .line 175
    return-void
.end method


# virtual methods
.method public applyResultError()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Sipgate;

    .line 229
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Sipgate;
    if-eqz v0, :cond_0

    .line 230
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Sipgate;->access$0(Lcom/csipsimple/wizards/impl/Sipgate;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    :cond_0
    return-void
.end method

.method public applyResultSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "balanceText"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Sipgate;

    .line 240
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Sipgate;
    if-eqz v0, :cond_0

    .line 241
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Sipgate;->access$1(Lcom/csipsimple/wizards/impl/Sipgate;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Sipgate;->access$0(Lcom/csipsimple/wizards/impl/Sipgate;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
    :cond_0
    return-void
.end method

.method public getRequest(Lcom/csipsimple/api/SipProfile;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 9
    .param p1, "acc"    # Lcom/csipsimple/api/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v4, "https://samurai.sipgate.net/RPC2"

    .line 207
    .local v4, "requestURL":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "userpassword":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/csipsimple/utils/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "encodedAuthorization":Ljava/lang/String;
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Basic "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v6, "Content-Type"

    const-string v7, "text/xml"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "<?xml version=\'1.0\'?><methodCall><methodName>samurai.BalanceGet</methodName></methodCall>"

    .line 218
    .local v0, "body":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 220
    return-object v3
.end method

.method public parseResponseLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 184
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/Sipgate$AccountBalance;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 185
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "strValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 189
    .local v3, "value":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 190
    float-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 195
    .end local v3    # "value":F
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creditos : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " euros"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .end local v2    # "strValue":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 192
    .restart local v2    # "strValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "SipgateW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t parse float value in credit "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "strValue":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
