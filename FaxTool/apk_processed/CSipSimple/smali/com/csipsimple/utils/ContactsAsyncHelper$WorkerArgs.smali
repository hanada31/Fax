.class final Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie:Ljava/lang/Object;

.field public defaultResource:I

.field public listener:Lcom/csipsimple/utils/ContactsAsyncHelper$OnImageLoadCompleteListener;

.field public loadedUri:Landroid/net/Uri;

.field public result:Ljava/lang/Object;

.field public view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/csipsimple/utils/ContactsAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
