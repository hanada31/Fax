.class Lcom/csipsimple/ui/prefs/CodecsFragment$4;
.super Ljava/lang/Object;
.source "CodecsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/prefs/CodecsFragment;->userActivateCodec(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/prefs/CodecsFragment;

.field private final synthetic val$codec:Ljava/util/Map;

.field private final synthetic val$newPrio:S


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/prefs/CodecsFragment;Ljava/util/Map;S)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/CodecsFragment$4;->this$0:Lcom/csipsimple/ui/prefs/CodecsFragment;

    iput-object p2, p0, Lcom/csipsimple/ui/prefs/CodecsFragment$4;->val$codec:Ljava/util/Map;

    iput-short p3, p0, Lcom/csipsimple/ui/prefs/CodecsFragment$4;->val$newPrio:S

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/CodecsFragment$4;->this$0:Lcom/csipsimple/ui/prefs/CodecsFragment;

    iget-object v1, p0, Lcom/csipsimple/ui/prefs/CodecsFragment$4;->val$codec:Ljava/util/Map;

    iget-short v2, p0, Lcom/csipsimple/ui/prefs/CodecsFragment$4;->val$newPrio:S

    invoke-static {v0, v1, v2}, Lcom/csipsimple/ui/prefs/CodecsFragment;->access$3(Lcom/csipsimple/ui/prefs/CodecsFragment;Ljava/util/Map;S)V

    .line 323
    return-void
.end method
