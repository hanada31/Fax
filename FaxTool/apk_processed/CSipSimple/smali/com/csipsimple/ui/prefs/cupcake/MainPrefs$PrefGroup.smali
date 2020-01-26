.class Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;
.super Ljava/lang/Object;
.source "MainPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/prefs/cupcake/MainPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrefGroup"
.end annotation


# instance fields
.field public icon:I

.field public intent:Landroid/content/Intent;

.field public summary:Ljava/lang/String;

.field final synthetic this$0:Lcom/csipsimple/ui/prefs/cupcake/MainPrefs;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/prefs/cupcake/MainPrefs;IIILandroid/content/Intent;)V
    .locals 1
    .param p2, "title_res"    # I
    .param p3, "summary_res"    # I
    .param p4, "icon"    # I
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->this$0:Lcom/csipsimple/ui/prefs/cupcake/MainPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1, p2}, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->title:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, p3}, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->summary:Ljava/lang/String;

    .line 115
    iput p4, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->icon:I

    .line 116
    iput-object p5, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->intent:Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/csipsimple/ui/prefs/cupcake/MainPrefs;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->this$0:Lcom/csipsimple/ui/prefs/cupcake/MainPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->title:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->summary:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->icon:I

    .line 109
    iput-object p5, p0, Lcom/csipsimple/ui/prefs/cupcake/MainPrefs$PrefGroup;->intent:Landroid/content/Intent;

    .line 110
    return-void
.end method
