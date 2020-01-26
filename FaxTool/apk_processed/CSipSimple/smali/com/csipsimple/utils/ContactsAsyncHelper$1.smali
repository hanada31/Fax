.class Lcom/csipsimple/utils/ContactsAsyncHelper$1;
.super Landroid/support/v4/util/LruCache;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/utils/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;


# direct methods
.method constructor <init>(Lcom/csipsimple/utils/ContactsAsyncHelper;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/utils/ContactsAsyncHelper$1;->this$0:Lcom/csipsimple/utils/ContactsAsyncHelper;

    .line 53
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Landroid/net/Uri;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/csipsimple/utils/ContactsAsyncHelper$1;->sizeOf(Landroid/net/Uri;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
