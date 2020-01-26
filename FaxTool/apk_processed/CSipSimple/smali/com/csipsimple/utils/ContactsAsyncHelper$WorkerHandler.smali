.class Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/csipsimple/utils/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    .line 104
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;

    .line 109
    .local v1, "args":Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;
    const/4 v13, 0x0

    .line 110
    .local v13, "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 111
    iget-object v14, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    const v15, 0x7f06005b

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;

    .line 112
    .local v10, "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    if-eqz v10, :cond_2

    iget-object v14, v10, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    if-eqz v14, :cond_2

    .line 113
    iget-object v13, v10, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    .line 114
    const/4 v6, 0x0

    .line 115
    .local v6, "hiRes":Z
    const-string v14, "hiRes"

    invoke-virtual {v13, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "p":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "1"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 117
    const/4 v6, 0x1

    .line 119
    :cond_0
    const-string v14, "ContactsAsyncHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "get : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v7, 0x0

    .line 121
    .local v7, "img":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    iget-object v15, v14, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    monitor-enter v15

    .line 122
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    iget-object v14, v14, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v14, v13}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 121
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-nez v7, :cond_1

    .line 125
    invoke-static {}, Lcom/csipsimple/utils/ContactsAsyncHelper;->access$0()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v14

    iget-object v15, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 126
    iget v0, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 125
    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v13, v6, v0}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    iget-object v15, v14, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    monitor-enter v15

    .line 128
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    iget-object v14, v14, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v14, v13, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :cond_1
    if-eqz v7, :cond_3

    .line 132
    iput-object v7, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 182
    .end local v6    # "hiRes":Z
    .end local v7    # "img":Landroid/graphics/Bitmap;
    .end local v9    # "p":Ljava/lang/String;
    .end local v10    # "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    :cond_2
    :goto_0
    iput-object v13, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->loadedUri:Landroid/net/Uri;

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Lcom/csipsimple/utils/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 186
    .local v11, "reply":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    iput v14, v11, Landroid/os/Message;->arg1:I

    .line 187
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v14, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void

    .line 121
    .end local v11    # "reply":Landroid/os/Message;
    .restart local v6    # "hiRes":Z
    .restart local v7    # "img":Landroid/graphics/Bitmap;
    .restart local v9    # "p":Ljava/lang/String;
    .restart local v10    # "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 127
    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .line 134
    :cond_3
    const/4 v14, 0x0

    iput-object v14, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v6    # "hiRes":Z
    .end local v7    # "img":Landroid/graphics/Bitmap;
    .end local v9    # "p":Ljava/lang/String;
    .end local v10    # "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    :cond_4
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 138
    iget-object v14, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    const v15, 0x7f06005b

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;

    .line 139
    .restart local v10    # "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    if-eqz v10, :cond_2

    iget-object v14, v10, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    if-eqz v14, :cond_2

    .line 140
    iget-object v13, v10, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    .line 141
    const-string v14, "ContactsAsyncHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "get : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v7, 0x0

    .line 145
    .restart local v7    # "img":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    iget-object v15, v14, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    monitor-enter v15

    .line 146
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    iget-object v14, v14, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v14, v13}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 145
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 148
    if-nez v7, :cond_5

    .line 149
    const/16 v14, 0x4000

    new-array v4, v14, [B

    .line 151
    .local v4, "buffer":[B
    :try_start_5
    iget-object v14, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 152
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v8, :cond_5

    .line 153
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 156
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_6
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v12

    .local v12, "size":I
    const/4 v14, -0x1

    if-ne v12, v14, :cond_6

    .line 160
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 162
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 163
    .local v3, "boasBytes":[B
    const/4 v14, 0x0

    array-length v15, v3

    .line 164
    const/16 v16, 0x0

    .line 163
    move-object/from16 v0, v16

    invoke-static {v3, v14, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v7

    .line 171
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "boasBytes":[B
    .end local v4    # "buffer":[B
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v12    # "size":I
    :cond_5
    :goto_2
    if-eqz v7, :cond_7

    .line 172
    iput-object v7, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    iget-object v15, v14, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    monitor-enter v15

    .line 174
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    iget-object v14, v14, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v14, v13, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    monitor-exit v15

    goto/16 :goto_0

    :catchall_2
    move-exception v14

    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v14

    .line 145
    :catchall_3
    move-exception v14

    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v14

    .line 157
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v12    # "size":I
    :cond_6
    const/4 v14, 0x0

    :try_start_a
    invoke-virtual {v2, v4, v14, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_1

    .line 159
    .end local v12    # "size":I
    :catchall_4
    move-exception v14

    .line 160
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 161
    throw v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 166
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 167
    .local v5, "ex":Ljava/lang/Exception;
    const-string v14, "ContactsAsyncHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Cannot load photo "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 177
    .end local v4    # "buffer":[B
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_7
    const/4 v14, 0x0

    iput-object v14, v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0
.end method
