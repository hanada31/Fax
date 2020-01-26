.class Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;
.super Lcom/csipsimple/wizards/impl/AccountBalanceHelper;
.source "Mobex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Mobex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountBalance"
.end annotation


# instance fields
.field private p:Ljava/util/regex/Pattern;

.field private w:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/csipsimple/wizards/impl/Mobex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/Mobex;)V
    .locals 1
    .param p1, "wizard"    # Lcom/csipsimple/wizards/impl/Mobex;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;-><init>()V

    .line 189
    const-string v0, "^.*<return xsi:type=\"xsd:string\">(.*)</return>.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;->p:Ljava/util/regex/Pattern;

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    .line 194
    return-void
.end method


# virtual methods
.method public applyResultError()V
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Mobex;

    .line 247
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Mobex;
    if-eqz v0, :cond_0

    .line 248
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Mobex;->access$1(Lcom/csipsimple/wizards/impl/Mobex;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    :cond_0
    return-void
.end method

.method public applyResultSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "balanceText"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/impl/Mobex;

    .line 255
    .local v0, "wizard":Lcom/csipsimple/wizards/impl/Mobex;
    if-eqz v0, :cond_0

    .line 256
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Mobex;->access$2(Lcom/csipsimple/wizards/impl/Mobex;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-static {v0}, Lcom/csipsimple/wizards/impl/Mobex;->access$1(Lcom/csipsimple/wizards/impl/Mobex;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 259
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
    .line 219
    const-string v3, "http://200.152.124.172/billing/webservice/Server.php"

    .line 221
    .local v3, "requestURL":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "SOAPAction"

    const-string v5, "\"mostra_creditos\""

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, "Content-Type"

    const-string v5, "text/xml"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\" xmlns:SOAP-ENC=\"http://schemas.xmlsoap.org/soap/encoding/\" xmlns:xsi=\"http://www.w3.org/1999/XMLSchema-instance\" xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsd=\"http://www.w3.org/1999/XMLSchema\"><SOAP-ENV:Body><mostra_creditos SOAP-ENC:root=\"1\"><chave xsi:type=\"xsd:string\">"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v5, p1, Lcom/csipsimple/api/SipProfile;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 234
    const-string v5, "</chave><username xsi:type=\"xsd:string\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    iget-object v5, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    const-string v6, "^12"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 236
    const-string v5, "</username></mostra_creditos></SOAP-ENV:Body></SOAP-ENV:Envelope>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "body":Ljava/lang/String;
    invoke-static {}, Lcom/csipsimple/wizards/impl/Mobex;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending request for user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/csipsimple/api/SipProfile;->username:Ljava/lang/String;

    const-string v7, "^12"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 241
    return-object v2
.end method

.method public parseResponseLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 198
    iget-object v4, p0, Lcom/csipsimple/wizards/impl/Mobex$AccountBalance;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 199
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "strValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 203
    .local v3, "value":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    .line 204
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

    .line 209
    .end local v3    # "value":F
    :cond_0
    :goto_0
    invoke-static {}, Lcom/csipsimple/wizards/impl/Mobex;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "We parse Creditos : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " R$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v2    # "strValue":Ljava/lang/String;
    :cond_1
    return-object v8

    .line 206
    .restart local v2    # "strValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/csipsimple/wizards/impl/Mobex;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t parse float value in credit "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
