.class Lcom/csipsimple/ui/favorites/FavAdapter$6;
.super Ljava/lang/Object;
.source "FavAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/favorites/FavAdapter;->showDialogForSipData(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

.field private final synthetic val$domain:Ljava/lang/String;

.field private final synthetic val$groupName:Ljava/lang/String;

.field private final synthetic val$profileId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/favorites/FavAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/FavAdapter$6;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    iput-object p2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$6;->val$groupName:Ljava/lang/String;

    iput-object p3, p0, Lcom/csipsimple/ui/favorites/FavAdapter$6;->val$domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/csipsimple/ui/favorites/FavAdapter$6;->val$profileId:Ljava/lang/Long;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavAdapter$6;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    iget-object v1, p0, Lcom/csipsimple/ui/favorites/FavAdapter$6;->val$groupName:Ljava/lang/String;

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    iget-object v3, p0, Lcom/csipsimple/ui/favorites/FavAdapter$6;->val$domain:Ljava/lang/String;

    iget-object v4, p0, Lcom/csipsimple/ui/favorites/FavAdapter$6;->val$profileId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/csipsimple/ui/favorites/FavAdapter;->access$3(Lcom/csipsimple/ui/favorites/FavAdapter;Ljava/lang/String;ILjava/lang/String;J)V

    .line 342
    return-void
.end method
