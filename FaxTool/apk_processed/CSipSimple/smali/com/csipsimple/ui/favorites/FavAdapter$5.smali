.class Lcom/csipsimple/ui/favorites/FavAdapter$5;
.super Ljava/lang/Object;
.source "FavAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/favorites/FavAdapter;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/FavAdapter$5;->this$0:Lcom/csipsimple/ui/favorites/FavAdapter;

    iput-object p2, p0, Lcom/csipsimple/ui/favorites/FavAdapter$5;->val$choiceCursor:Landroid/database/Cursor;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/FavAdapter$5;->val$choiceCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    return-void
.end method
