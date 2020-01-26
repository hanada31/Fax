.class Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;
.super Ljava/lang/Thread;
.source "AccountBalanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->launchRequest(Lcom/csipsimple/api/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

.field private final synthetic val$acc:Lcom/csipsimple/api/SipProfile;


# direct methods
.method constructor <init>(Lcom/csipsimple/wizards/impl/AccountBalanceHelper;Lcom/csipsimple/api/SipProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    iput-object p2, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->val$acc:Lcom/csipsimple/api/SipProfile;

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 50
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 51
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    iget-object v9, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->val$acc:Lcom/csipsimple/api/SipProfile;

    invoke-virtual {v8, v9}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->getRequest(Lcom/csipsimple/api/SipProfile;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v6

    .line 52
    .local v6, "req":Lorg/apache/http/client/methods/HttpRequestBase;
    if-nez v6, :cond_1

    .line 76
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v6    # "req":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "req":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_1
    invoke-interface {v2, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 57
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_3

    .line 58
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 61
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 62
    .local v5, "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 63
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    invoke-virtual {v8, v5}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->parseResponseLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "res":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 65
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    iget-object v9, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "req":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v7    # "res":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    iget-object v9, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    invoke-virtual {v9, v11}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v6    # "req":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    iget-object v9, p0, Lcom/csipsimple/wizards/impl/AccountBalanceHelper$1;->this$0:Lcom/csipsimple/wizards/impl/AccountBalanceHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/csipsimple/wizards/impl/AccountBalanceHelper;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
