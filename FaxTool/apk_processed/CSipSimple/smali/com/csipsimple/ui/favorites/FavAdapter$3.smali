.class Lcom/csipsimple/ui/favorites/FavAdapter$3;
.super Ljava/lang/Object;
.source "FavAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/favorites/FavAdapter;->showDialogForGroupSelection(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

.field private final synthetic val$choiceCursor:Landroid/database/Cursor;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$profileId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    iput-object p2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$choiceCursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$profileId:Ljava/lang/Long;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 306
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$choiceCursor:Landroid/database/Cursor;

    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 307
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$choiceCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$choiceCursor:Landroid/database/Cursor;

    const-string v4, "title"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "android_group"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$profileId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$3;->val$choiceCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 312
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 313
    return-void
.end method
