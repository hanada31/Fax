.class public Lcom/csipsimple/utils/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;,
        Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;,
        Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;,
        Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final EVENT_LOAD_IMAGE_URI:I = 0x2

.field public static final HIGH_RES_URI_PARAM:Ljava/lang/String; = "hiRes"

.field private static final TAG_PHOTO_INFOS:I = 0x7f06005b

.field private static final THIS_FILE:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static contactsWrapper:Lcom/csipsimple/utils/contacts/ContactsWrapper;

.field private static sThreadHandler:Landroid/os/Handler;


# instance fields
.field photoCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    new-instance v1, Lcom/csipsimple/utils/ContactsAsyncHelper$1;

    const/high16 v2, 0x500000

    invoke-direct {v1, p0, v2}, Lcom/csipsimple/utils/ContactsAsyncHelper$1;-><init>(Lcom/csipsimple/utils/ContactsAsyncHelper;I)V

    iput-object v1, p0, Lcom/csipsimple/utils/ContactsAsyncHelper;->photoCache:Landroid/support/v4/util/LruCache;

    .line 196
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 198
    new-instance v1, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/csipsimple/utils/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/csipsimple/utils/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 199
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v1

    sput-object v1, Lcom/csipsimple/utils/ContactsAsyncHelper;->contactsWrapper:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    .line 200
    return-void
.end method

.method static synthetic access$0()Lcom/csipsimple/utils/contacts/ContactsWrapper;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/csipsimple/utils/ContactsAsyncHelper;->contactsWrapper:Lcom/csipsimple/utils/contacts/ContactsWrapper;

    return-object v0
.end method

.method private static defaultImage(Landroid/widget/ImageView;I)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "placeholderImageResource"    # I

    .prologue
    const/4 v3, 0x0

    .line 298
    const-string v1, "ContactsAsyncHelper"

    const-string v2, "No uri, just display placeholder."

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;

    invoke-direct {v0, v3}, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;-><init>(Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;)V

    .line 300
    .local v0, "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    iput-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    .line 301
    const v1, 0x7f06005b

    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    return-void
.end method

.method private static isAlreadyProcessed(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 321
    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;

    .line 322
    .local v0, "vt":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/csipsimple/utils/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static preloadImage(Landroid/widget/ImageView;ILandroid/os/Message;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "placeholderImageResource"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 309
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    :goto_0
    sget-object v0, Lcom/csipsimple/utils/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static final updateImageViewWithContactPhotoAsync(ILcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V
    .locals 5
    .param p0, "token"    # I
    .param p1, "listener"    # Lcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "imageView"    # Landroid/widget/ImageView;
    .param p5, "callerInfo"    # Lcom/csipsimple/models/CallerInfo;
    .param p6, "placeholderImageResource"    # I

    .prologue
    const/4 v4, 0x0

    .line 222
    sget-object v3, Lcom/csipsimple/utils/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    .line 223
    new-instance v3, Lcom/csipsimple/utils/ContactsAsyncHelper;

    invoke-direct {v3}, Lcom/csipsimple/utils/ContactsAsyncHelper;-><init>()V

    .line 228
    :cond_0
    if-eqz p5, :cond_1

    iget-object v3, p5, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 229
    :cond_1
    invoke-static {p4, p6}, Lcom/csipsimple/utils/ContactsAsyncHelper;->defaultImage(Landroid/widget/ImageView;I)V

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 234
    :cond_3
    iget-object v3, p5, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-static {p4, v3}, Lcom/csipsimple/utils/ContactsAsyncHelper;->isAlreadyProcessed(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 242
    new-instance v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;

    invoke-direct {v0, v4}, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;)V

    .line 243
    .local v0, "args":Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;
    iput-object p2, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 244
    iput-object p3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 245
    iput-object p4, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 246
    new-instance v2, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;

    invoke-direct {v2, v4}, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;-><init>(Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;)V

    .line 247
    .local v2, "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    iget-object v3, p5, Lcom/csipsimple/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    .line 248
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    const v4, 0x7f06005b

    invoke-virtual {v3, v4, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 249
    iput p6, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 250
    iput-object p1, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 253
    sget-object v3, Lcom/csipsimple/utils/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 254
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 255
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    invoke-static {p4, p6, v1}, Lcom/csipsimple/utils/ContactsAsyncHelper;->preloadImage(Landroid/widget/ImageView;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "placeholderImageResource"    # I

    .prologue
    const/4 v5, 0x0

    .line 262
    sget-object v3, Lcom/csipsimple/utils/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    if-nez v3, :cond_0

    .line 263
    const-string v3, "ContactsAsyncHelper"

    const-string v4, "Update image view with contact async"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v3, Lcom/csipsimple/utils/ContactsAsyncHelper;

    invoke-direct {v3}, Lcom/csipsimple/utils/ContactsAsyncHelper;-><init>()V

    .line 269
    :cond_0
    if-nez p2, :cond_2

    .line 270
    invoke-static {p1, p3}, Lcom/csipsimple/utils/ContactsAsyncHelper;->defaultImage(Landroid/widget/ImageView;I)V

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    invoke-static {p1, p2}, Lcom/csipsimple/utils/ContactsAsyncHelper;->isAlreadyProcessed(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    new-instance v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;

    invoke-direct {v0, v5}, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;)V

    .line 282
    .local v0, "args":Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;
    iput-object p0, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 283
    iput-object p1, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 284
    new-instance v2, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;

    invoke-direct {v2, v5}, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;-><init>(Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;)V

    .line 285
    .local v2, "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    iput-object p2, v2, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    .line 286
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    const v4, 0x7f06005b

    invoke-virtual {v3, v4, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 287
    iput p3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 290
    sget-object v3, Lcom/csipsimple/utils/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 291
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 292
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    invoke-static {p1, p3, v1}, Lcom/csipsimple/utils/ContactsAsyncHelper;->preloadImage(Landroid/widget/ImageView;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "person"    # Lcom/csipsimple/models/CallerInfo;
    .param p3, "placeholderImageResource"    # I

    .prologue
    const/4 v1, 0x0

    .line 209
    const/4 v0, -0x1

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/csipsimple/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(ILcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Lcom/csipsimple/models/CallerInfo;I)V

    .line 211
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 330
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;

    .line 331
    .local v0, "args":Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 332
    :cond_0
    const/4 v1, 0x0

    .line 334
    .local v1, "imagePresent":Z
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    const v4, 0x7f06005b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;

    .line 335
    .local v2, "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    if-nez v2, :cond_2

    .line 336
    const-string v3, "ContactsAsyncHelper"

    const-string v4, "Tag has been removed meanwhile"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v1    # "imagePresent":Z
    .end local v2    # "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    :cond_1
    :goto_0
    return-void

    .line 339
    .restart local v1    # "imagePresent":Z
    .restart local v2    # "photoTag":Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;
    :cond_2
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->loadedUri:Landroid/net/Uri;

    iget-object v4, v2, Lcom/csipsimple/utils/ContactsAsyncHelper$PhotoViewTag;->uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/csipsimple/utils/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 340
    const-string v3, "ContactsAsyncHelper"

    const-string v4, "Image view has changed uri meanwhile"

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_3
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 348
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    iget-object v4, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    const/4 v1, 0x1

    .line 356
    :cond_4
    :goto_1
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v3, :cond_1

    .line 357
    const-string v3, "ContactsAsyncHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Notifying listener: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 358
    const-string v5, " image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->loadedUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " completed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v4, p1, Landroid/os/Message;->what:I

    iget-object v5, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v6, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 351
    :cond_5
    iget v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 352
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    iget-object v3, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v4, v0, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
