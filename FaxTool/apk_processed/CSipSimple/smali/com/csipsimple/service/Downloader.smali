.class public Lcom/csipsimple/service/Downloader;
.super Landroid/app/IntentService;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;,
        Lcom/csipsimple/service/Downloader$Progress;
    }
.end annotation


# static fields
.field public static final EXTRA_CHECK_MD5:Ljava/lang/String; = "checkMd5"

.field public static final EXTRA_ICON:Ljava/lang/String; = "icon"

.field public static final EXTRA_OUTPATH:Ljava/lang/String; = "outpath"

.field public static final EXTRA_PENDING_FINISH_INTENT:Ljava/lang/String; = "pendingIntent"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final NOTIF_DOWNLOAD:I = 0x0

.field private static final THIS_FILE:Ljava/lang/String; = "Downloader"


# instance fields
.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "Downloader"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/service/Downloader;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/csipsimple/service/Downloader;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 78
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/csipsimple/service/Downloader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/csipsimple/service/Downloader;->notificationManager:Landroid/app/NotificationManager;

    .line 79
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/service/Downloader;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 86
    iget-object v0, p0, Lcom/csipsimple/service/Downloader;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 87
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 29
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 92
    .local v10, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/16 v20, 0x0

    .line 93
    .local v20, "result":I
    const-string v24, "outpath"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, "outPath":Ljava/lang/String;
    const-string v24, "checkMd5"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 95
    .local v5, "checkMd5":Z
    const-string v24, "icon"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 96
    .local v13, "icon":I
    const-string v24, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 97
    .local v22, "title":Ljava/lang/String;
    if-lez v13, :cond_4

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    const/16 v21, 0x1

    .line 100
    .local v21, "showNotif":Z
    :goto_0
    new-instance v14, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v14, "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 103
    const v24, 0x1080081

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 104
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 105
    new-instance v12, Landroid/content/Intent;

    const-class v24, Lcom/csipsimple/ui/SipHome;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v12, "i":Landroid/content/Intent;
    const/16 v24, 0x0

    const/high16 v25, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/service/Downloader;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const v25, 0x7f03002f

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v7, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 109
    .local v7, "contentView":Landroid/widget/RemoteViews;
    const v24, 0x7f060083

    move/from16 v0, v24

    invoke-virtual {v7, v0, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 110
    const v24, 0x7f060084

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/service/Downloader;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0231

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    const v24, 0x7f060086

    const/16 v25, 0x32

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 112
    const v24, 0x7f060085

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    invoke-virtual {v14, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    if-eqz v21, :cond_5

    invoke-virtual {v14}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v15

    .line 116
    .local v15, "notification":Landroid/app/Notification;
    :goto_1
    iput-object v7, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 117
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 119
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v17, "output":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 121
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 124
    :cond_0
    if-eqz v15, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/service/Downloader;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 127
    :cond_1
    new-instance v19, Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;

    new-instance v24, Lcom/csipsimple/service/Downloader$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/csipsimple/service/Downloader$1;-><init>(Lcom/csipsimple/service/Downloader;Landroid/app/Notification;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/csipsimple/service/Downloader$FileStreamResponseHandler;-><init>(Lcom/csipsimple/service/Downloader;Ljava/io/File;Lcom/csipsimple/service/Downloader$Progress;)V

    .line 142
    .local v19, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/service/Downloader;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 144
    .local v11, "hasReply":Z
    if-eqz v11, :cond_2

    .line 146
    if-eqz v5, :cond_6

    .line 147
    new-instance v23, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ".md5sum"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 148
    .local v23, "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    .line 149
    .local v6, "content":Ljava/io/InputStream;
    if-eqz v6, :cond_6

    .line 150
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    .local v4, "br":Ljava/io/BufferedReader;
    const-string v8, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .local v8, "downloadedMD5":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    const-string v25, "  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v8, v24, v25
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :try_start_2
    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/csipsimple/utils/MD5;->checkMD5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 158
    new-instance v24, Ljava/io/IOException;

    const-string v25, "md5_verification : incorrect"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "content":Ljava/io/InputStream;
    .end local v8    # "downloadedMD5":Ljava/lang/String;
    .end local v11    # "hasReply":Z
    .end local v17    # "output":Ljava/io/File;
    .end local v19    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/Boolean;>;"
    .end local v23    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 201
    .local v9, "e":Ljava/io/IOException;
    const-string v24, "Downloader"

    const-string v25, "Exception in download"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-nez v20, :cond_3

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/service/Downloader;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/NotificationManager;->cancel(I)V

    .line 208
    :cond_3
    return-void

    .line 97
    .end local v7    # "contentView":Landroid/widget/RemoteViews;
    .end local v12    # "i":Landroid/content/Intent;
    .end local v14    # "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v15    # "notification":Landroid/app/Notification;
    .end local v21    # "showNotif":Z
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 115
    .restart local v7    # "contentView":Landroid/widget/RemoteViews;
    .restart local v12    # "i":Landroid/content/Intent;
    .restart local v14    # "nb":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v21    # "showNotif":Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 154
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "content":Ljava/io/InputStream;
    .restart local v8    # "downloadedMD5":Ljava/lang/String;
    .restart local v11    # "hasReply":Z
    .restart local v15    # "notification":Landroid/app/Notification;
    .restart local v17    # "output":Ljava/io/File;
    .restart local v19    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/Boolean;>;"
    .restart local v23    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    .line 155
    .local v9, "e":Ljava/lang/NullPointerException;
    :try_start_3
    new-instance v24, Ljava/io/IOException;

    const-string v25, "md5_verification : no sum on server"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 162
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "content":Ljava/io/InputStream;
    .end local v8    # "downloadedMD5":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/NullPointerException;
    .end local v23    # "url":Ljava/net/URL;
    :cond_6
    const-string v24, "pendingIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    .local v18, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "chmod 644 "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 171
    :goto_3
    :try_start_5
    const-string v24, "Downloader"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Download finished of : "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz v18, :cond_7

    .line 175
    move-object/from16 v0, v18

    iput-object v0, v15, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 176
    const/16 v24, 0x10

    move/from16 v0, v24

    iput v0, v15, Landroid/app/Notification;->flags:I

    .line 177
    const v24, 0x1080082

    move/from16 v0, v24

    iput v0, v15, Landroid/app/Notification;->icon:I

    .line 178
    iget-object v0, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    const v25, 0x7f060085

    const/16 v26, 0x8

    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    iget-object v0, v15, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    const v25, 0x7f060084

    .line 180
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/service/Downloader;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b006e

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    const-string v27, " - Click to install"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 180
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 179
    invoke-virtual/range {v24 .. v26}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/csipsimple/service/Downloader;->notificationManager:Landroid/app/NotificationManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 198
    :goto_4
    const/16 v20, -0x1

    goto/16 :goto_2

    .line 167
    :catch_2
    move-exception v9

    .line 168
    .local v9, "e":Ljava/io/IOException;
    const-string v24, "Downloader"

    const-string v25, "Unable to make the apk file readable"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 194
    .end local v9    # "e":Ljava/io/IOException;
    :cond_7
    const-string v24, "Downloader"

    const-string v25, "Invalid pending intent for finish !!!"

    invoke-static/range {v24 .. v25}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4
.end method
