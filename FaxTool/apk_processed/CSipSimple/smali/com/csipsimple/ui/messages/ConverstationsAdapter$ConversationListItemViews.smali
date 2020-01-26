.class public final Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;
.super Ljava/lang/Object;
.source "ConverstationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/messages/ConverstationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationListItemViews"
.end annotation


# instance fields
.field dateView:Landroid/widget/TextView;

.field from:Ljava/lang/String;

.field fromFull:Ljava/lang/String;

.field fromView:Landroid/widget/TextView;

.field position:I

.field quickContactView:Lcom/csipsimple/widgets/contactbadge/QuickContactBadge;

.field to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getRemoteNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->from:Ljava/lang/String;

    .line 67
    .local v0, "number":Ljava/lang/String;
    const-string v1, "SELF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/csipsimple/ui/messages/ConverstationsAdapter$ConversationListItemViews;->to:Ljava/lang/String;

    .line 70
    :cond_0
    return-object v0
.end method
