.class Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;
.super Ljava/lang/Object;
.source "FavAdapter.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/favorites/FavAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuCallback"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private domain:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private profileId:Ljava/lang/Long;

.field private publishEnabled:Z

.field final synthetic this$0:Lcom/csipsimple/ui/favorites/FavAdapter;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "ctxt"    # Landroid/content/Context;
    .param p3, "aProfileId"    # Ljava/lang/Long;
    .param p4, "aGroupName"    # Ljava/lang/String;
    .param p5, "aDomain"    # Ljava/lang/String;
    .param p6, "aPublishedEnabled"    # Z

    .prologue
    .line 251
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->profileId:Ljava/lang/Long;

    .line 252
    iput-object p3, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->profileId:Ljava/lang/Long;

    .line 253
    iput-object p2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->context:Landroid/content/Context;

    .line 254
    iput-object p4, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->groupName:Ljava/lang/String;

    .line 255
    iput-object p5, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->domain:Ljava/lang/String;

    .line 256
    iput-boolean p6, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->publishEnabled:Z

    .line 257
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 8
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 266
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    .line 267
    .local v1, "itemId":I
    const v4, 0x7f06010c

    if-ne v1, v4, :cond_0

    .line 268
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    iget-object v4, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->profileId:Ljava/lang/Long;

    iget-object v6, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->groupName:Ljava/lang/String;

    invoke-static {v2, v4, v5, v6}, Lcom/csipsimple/ui/favorites/FavAdapter;->access$1(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V

    .line 279
    :goto_0
    return v3

    .line 270
    :cond_0
    const v4, 0x7f06010e

    if-ne v1, v4, :cond_2

    .line 271
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "publish_enabled"

    iget-boolean v5, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->publishEnabled:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/csipsimple/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-object v5, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->profileId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    .line 272
    goto :goto_1

    .line 275
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2
    const v4, 0x7f06010d

    if-ne v1, v4, :cond_3

    .line 276
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    iget-object v4, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->profileId:Ljava/lang/Long;

    iget-object v6, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->groupName:Ljava/lang/String;

    iget-object v7, p0, Lcom/csipsimple/ui/favorites/FavAdapter$MenuCallback;->domain:Ljava/lang/String;

    invoke-static {v2, v4, v5, v6, v7}, Lcom/csipsimple/ui/favorites/FavAdapter;->access$2(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v3, v2

    .line 279
    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 262
    return-void
.end method
