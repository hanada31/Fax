.class Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/service/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileStreamResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mFile:Ljava/io/File;

.field private mProgress:Lcom/csipsimple/service/Downloader$Progress;

.field final synthetic this$0:Lcom/csipsimple/service/Downloader;


# direct methods
.method constructor <init>(Lcom/csipsimple/service/Downloader;Ljava/io/File;Lcom/csipsimple/service/Downloader$Progress;)V
    .locals 0
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "progress"    # Lcom/csipsimple/service/Downloader$Progress;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;->this$0:Lcom/csipsimple/service/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;->mFile:Ljava/io/File;

    .line 223
    iput-object p3, p0, Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;->mProgress:Lcom/csipsimple/service/Downloader$Progress;

    .line 224
    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Boolean;
    .locals 14
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 229
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 230
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    const/4 v1, 0x0

    .line 233
    .local v1, "done":Z
    if-eqz v3, :cond_0

    .line 234
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 235
    .local v6, "length":Ljava/lang/Long;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 236
    .local v5, "input":Ljava/io/InputStream;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 237
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 238
    .local v7, "size":I
    const/4 v8, 0x0

    .line 240
    .local v8, "total":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 241
    const/4 v9, -0x1

    if-ne v7, v9, :cond_1

    .line 246
    const/4 v1, 0x1

    .line 251
    .end local v0    # "buffer":[B
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v6    # "length":Ljava/lang/Long;
    .end local v7    # "size":I
    .end local v8    # "total":I
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 254
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    return-object v9

    .line 242
    .restart local v0    # "buffer":[B
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v6    # "length":Ljava/lang/Long;
    .restart local v7    # "size":I
    .restart local v8    # "total":I
    :cond_1
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 243
    add-int/2addr v8, v7

    .line 244
    iget-object v9, p0, Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;->mProgress:Lcom/csipsimple/service/Downloader$Progress;

    int-to-long v10, v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/csipsimple/service/Downloader$Progress;->run(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "buffer":[B
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v6    # "length":Ljava/lang/Long;
    .end local v7    # "size":I
    .end local v8    # "total":I
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v9, "Downloader"

    const-string v10, "Problem on downloading"

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 250
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 251
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 252
    throw v9
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
