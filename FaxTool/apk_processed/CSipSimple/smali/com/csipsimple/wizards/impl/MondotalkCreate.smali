.class public Lcom/csipsimple/wizards/impl/MondotalkCreate;
.super Landroid/app/Activity;
.source "MondotalkCreate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;,
        Lcom/csipsimple/wizards/impl/MondotalkCreate$MondotalkHandler;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "{7EB11554-7BAD-D25D-1D17-B070D4AC459F}"

.field private static final MSG_CAPTCHA_LOADED:I = 0x0

.field private static final MSG_SAVE_DONE:I = 0x1

.field private static final MSG_SAVE_ERROR:I = 0x2

.field private static final THIS_FILE:Ljava/lang/String; = "MondotalkCreate"


# instance fields
.field private captcha:Landroid/widget/EditText;

.field private captchaBitmap:Landroid/graphics/Bitmap;

.field private captchaImg:Landroid/widget/ImageView;

.field private captchaKey:Ljava/lang/String;

.field private captchaProgress:Landroid/view/View;

.field private captchaUrl:Ljava/lang/String;

.field private countryCode:Landroid/widget/EditText;

.field private emailAddr:Landroid/widget/EditText;

.field private firstName:Landroid/widget/EditText;

.field private lastName:Landroid/widget/EditText;

.field private mHander:Landroid/os/Handler;

.field private phone:Landroid/widget/EditText;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private soapResultPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 147
    new-instance v0, Lcom/csipsimple/wizards/impl/MondotalkCreate$MondotalkHandler;

    invoke-direct {v0, p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate$MondotalkHandler;-><init>(Lcom/csipsimple/wizards/impl/MondotalkCreate;)V

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->mHander:Landroid/os/Handler;

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaKey:Ljava/lang/String;

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaUrl:Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaBitmap:Landroid/graphics/Bitmap;

    .line 197
    const-string v0, "^.*<result xsi:type=\"xsd:string\">(.*)</result>.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->soapResultPattern:Ljava/util/regex/Pattern;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->countryCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captcha:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/csipsimple/wizards/impl/MondotalkCreate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 339
    invoke-direct/range {p0 .. p6}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->saveOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Z
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->retrieveCaptcha()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->firstName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcom/csipsimple/wizards/impl/MondotalkCreate;Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->getEditTextValue(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->lastName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->emailAddr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lcom/csipsimple/wizards/impl/MondotalkCreate;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->phone:Landroid/widget/EditText;

    return-object v0
.end method

.method private canSave()Z
    .locals 2

    .prologue
    .line 292
    const/4 v0, 0x1

    .line 294
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->firstName:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->checkEmptyText(Landroid/widget/EditText;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 295
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->emailAddr:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->checkEmptyText(Landroid/widget/EditText;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 296
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captcha:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->checkEmptyText(Landroid/widget/EditText;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 300
    const v1, 0x7f06008e

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 302
    return v0
.end method

.method private checkEmptyText(Landroid/widget/EditText;)Z
    .locals 1
    .param p1, "txt"    # Landroid/widget/EditText;

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "Empty"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 326
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEditTextValue(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 2
    .param p1, "txt"    # Landroid/widget/EditText;

    .prologue
    .line 311
    if-nez p1, :cond_1

    .line 312
    const-string v0, ""

    .line 318
    :cond_0
    :goto_0
    return-object v0

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "res":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const-string v0, ""

    goto :goto_0
.end method

.method private retrieveCaptcha()Z
    .locals 20

    .prologue
    .line 201
    :try_start_0
    new-instance v14, Ljava/net/Socket;

    const-string v17, "api001.mondotalk.com"

    const/16 v18, 0x50

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 202
    .local v14, "socket":Ljava/net/Socket;
    invoke-virtual {v14}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 210
    .end local v14    # "socket":Ljava/net/Socket;
    .local v9, "ip":Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string v13, "https://api001.mondotalk.com/webservices/captcha.php"

    .line 212
    .local v13, "requestURL":Ljava/lang/String;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 213
    .local v7, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v17, "SOAPAction"

    const-string v18, "\"Captcha\""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v17, "Content-Type"

    const-string v18, "text/xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope  SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"  xmlns:SOAP-ENC=\"http://schemas.xmlsoap.org/soap/encoding/\" xmlns:xsi=\"http://www.w3.org/1999/XMLSchema-instance\"  xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsd=\"http://www.w3.org/1999/XMLSchema\" ><SOAP-ENV:Body><Captcha SOAP-ENC:root=\"1\"><v1 xsi:type=\"xsd:string\">{7EB11554-7BAD-D25D-1D17-B070D4AC459F}</v1><v2 xsi:type=\"xsd:string\">"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</v2>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 228
    const-string v18, "<v3 xsi:type=\"xsd:string\">520</v3>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 229
    const-string v18, "<v4 xsi:type=\"xsd:string\">200</v4>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 230
    const-string v18, "</Captcha>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 231
    const-string v18, "</SOAP-ENV:Body>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 232
    const-string v18, "</SOAP-ENV:Envelope>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 217
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "body":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 237
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v7, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 240
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 242
    .local v6, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 243
    .local v8, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 244
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 245
    .local v10, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 247
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 248
    .local v11, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 266
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaKey:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    if-eqz v17, :cond_3

    .line 267
    const/16 v17, 0x0

    .line 283
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "line":Ljava/lang/String;
    .end local v13    # "requestURL":Ljava/lang/String;
    :goto_2
    return v17

    .line 203
    .end local v9    # "ip":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 204
    .local v4, "e":Ljava/lang/Exception;
    const-string v17, "MondotalkCreate"

    const-string v18, "Can\'t get local ip address"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    const-string v9, "127.0.0.1"

    .restart local v9    # "ip":Ljava/lang/String;
    goto/16 :goto_0

    .line 249
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v13    # "requestURL":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->soapResultPattern:Ljava/util/regex/Pattern;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 252
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 253
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 254
    .local v15, "strValue":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 255
    const-string v17, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 256
    .local v16, "strValues":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 257
    const/16 v17, 0x0

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaUrl:Ljava/lang/String;

    .line 258
    const/16 v17, 0x1

    aget-object v17, v16, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaKey:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 279
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    .end local v13    # "requestURL":Ljava/lang/String;
    .end local v15    # "strValue":Ljava/lang/String;
    .end local v16    # "strValues":[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 280
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v17, "MondotalkCreate"

    const-string v18, "Something went wrong while retrieving the captcha"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    const/16 v17, 0x0

    goto :goto_2

    .line 270
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v13    # "requestURL":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v17, "MondotalkCreate"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Captcha retrieved "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaBitmap:Landroid/graphics/Bitmap;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->mHander:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 276
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v11    # "line":Ljava/lang/String;
    :cond_4
    const-string v17, "MondotalkCreate"

    const-string v18, "Something went wrong while retrieving the captcha webservice "

    invoke-static/range {v17 .. v18}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private saveOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "firstName"    # Ljava/lang/String;
    .param p2, "lastName"    # Ljava/lang/String;
    .param p3, "contactEmail"    # Ljava/lang/String;
    .param p4, "contactPhone"    # Ljava/lang/String;
    .param p5, "countryCode"    # Ljava/lang/String;
    .param p6, "captcha"    # Ljava/lang/String;

    .prologue
    .line 343
    :try_start_0
    const-string v13, "https://api001.mondotalk.com/webservices/createaccount.php"

    .line 345
    .local v13, "requestURL":Ljava/lang/String;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v7, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 346
    .local v7, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v18, "SOAPAction"

    const-string v19, "\"CreateAccount\""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v18, "Content-Type"

    const-string v19, "text/xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><SOAP-ENV:Envelope  SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"  xmlns:SOAP-ENC=\"http://schemas.xmlsoap.org/soap/encoding/\" xmlns:xsi=\"http://www.w3.org/1999/XMLSchema-instance\"  xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsd=\"http://www.w3.org/1999/XMLSchema\" ><SOAP-ENV:Body><CreateAccount SOAP-ENC:root=\"1\"><v1 xsi:type=\"xsd:string\">{7EB11554-7BAD-D25D-1D17-B070D4AC459F}</v1><v2 xsi:type=\"xsd:string\">"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</v2>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 361
    const-string v19, "<v3 xsi:type=\"xsd:string\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</v3>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 362
    const-string v19, "<v4 xsi:type=\"xsd:string\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</v4>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 363
    const-string v19, "<v5 xsi:type=\"xsd:string\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</v5>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 364
    const-string v19, "<v6 xsi:type=\"xsd:string\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</v6>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 365
    const-string v19, "<v7 xsi:type=\"xsd:string\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</v7>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 366
    const-string v19, "<v8 xsi:type=\"xsd:string\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "</v8>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 367
    const-string v19, "</CreateAccount>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 368
    const-string v19, "</SOAP-ENV:Body>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 369
    const-string v19, "</SOAP-ENV:Envelope>"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 350
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "body":Ljava/lang/String;
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 374
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v7, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 377
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 379
    .local v6, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 380
    .local v8, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 381
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 382
    .local v9, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 384
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 386
    .local v10, "line":Ljava/lang/String;
    const-string v17, ""

    .line 387
    .local v17, "username":Ljava/lang/String;
    const-string v12, ""

    .line 388
    .local v12, "password":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 407
    :cond_1
    :goto_0
    const-string v18, "MondotalkCreate"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Account created "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 409
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->mHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->mHander:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const-string v21, "Invalid datas to create the account"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    const/16 v18, 0x0

    .line 425
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "password":Ljava/lang/String;
    .end local v13    # "requestURL":Ljava/lang/String;
    .end local v17    # "username":Ljava/lang/String;
    :goto_1
    return v18

    .line 389
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "password":Ljava/lang/String;
    .restart local v13    # "requestURL":Ljava/lang/String;
    .restart local v17    # "username":Ljava/lang/String;
    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->soapResultPattern:Ljava/util/regex/Pattern;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 392
    .local v11, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 393
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 394
    .local v15, "strValue":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 396
    const-string v18, "\\|"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 397
    .local v16, "strValues":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 398
    const/16 v18, 0x0

    aget-object v17, v16, v18

    .line 399
    const/16 v18, 0x1

    aget-object v12, v16, v18

    .line 402
    goto/16 :goto_0

    .line 413
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v15    # "strValue":Ljava/lang/String;
    .end local v16    # "strValues":[Ljava/lang/String;
    :cond_4
    new-instance v14, Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1, v12}, Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;-><init>(Lcom/csipsimple/wizards/impl/MondotalkCreate;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v14, "res":Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->mHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->mHander:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    const/16 v18, 0x1

    goto :goto_1

    .line 417
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "password":Ljava/lang/String;
    .end local v14    # "res":Lcom/csipsimple/wizards/impl/MondotalkCreate$AccountCreationResult;
    .end local v17    # "username":Ljava/lang/String;
    :cond_5
    const-string v18, "MondotalkCreate"

    const-string v19, "Something went wrong while retrieving the captcha webservice "

    invoke-static/range {v18 .. v19}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v2    # "body":Ljava/lang/String;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v13    # "requestURL":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->mHander:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->mHander:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const-string v21, "Error while creating the account"

    invoke-virtual/range {v19 .. v21}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 425
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 420
    :catch_0
    move-exception v4

    .line 421
    .local v4, "e":Ljava/lang/Exception;
    const-string v18, "MondotalkCreate"

    const-string v19, "Can\'t create account"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->canSave()Z

    .line 431
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 436
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 123
    .local v0, "id":I
    const v2, 0x7f060033

    if-ne v0, v2, :cond_1

    .line 124
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->finish()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const v2, 0x7f06008e

    if-ne v0, v2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->canSave()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 129
    invoke-virtual {p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    .line 128
    invoke-static {p0, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->progressDialog:Landroid/app/ProgressDialog;

    .line 130
    new-instance v1, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;

    invoke-direct {v1, p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate$2;-><init>(Lcom/csipsimple/wizards/impl/MondotalkCreate;)V

    .line 138
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f030053

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->setContentView(I)V

    .line 83
    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f06008e

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0600f2

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaImg:Landroid/widget/ImageView;

    .line 87
    const v1, 0x7f0600f3

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaProgress:Landroid/view/View;

    .line 89
    const v1, 0x7f0600ec

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->firstName:Landroid/widget/EditText;

    .line 90
    const v1, 0x7f0600ed

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->lastName:Landroid/widget/EditText;

    .line 91
    const v1, 0x7f0600ee

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->emailAddr:Landroid/widget/EditText;

    .line 92
    const v1, 0x7f0600f0

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->countryCode:Landroid/widget/EditText;

    .line 93
    const v1, 0x7f0600ef

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->phone:Landroid/widget/EditText;

    .line 94
    const v1, 0x7f0600f4

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captcha:Landroid/widget/EditText;

    .line 97
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->firstName:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->emailAddr:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v1, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captcha:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    new-instance v0, Lcom/csipsimple/wizards/impl/MondotalkCreate$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate$1;-><init>(Lcom/csipsimple/wizards/impl/MondotalkCreate;)V

    .line 107
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    invoke-direct {p0}, Lcom/csipsimple/wizards/impl/MondotalkCreate;->canSave()Z

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/csipsimple/wizards/impl/MondotalkCreate;->captchaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 441
    return-void
.end method
