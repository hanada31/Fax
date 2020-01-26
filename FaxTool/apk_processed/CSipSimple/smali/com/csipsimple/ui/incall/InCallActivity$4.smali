.class Lcom/csipsimple/ui/incall/InCallActivity$4;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/csipsimple/ui/incall/InCallActivity;->onTrigger(ILcom/csipsimple/api/SipCallSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/incall/InCallActivity;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/incall/InCallActivity$4;->this$0:Lcom/csipsimple/ui/incall/InCallActivity;

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 995
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 996
    return-void
.end method
