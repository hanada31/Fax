.class Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PresenceStatusSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresencesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->this$0:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;

    .line 93
    const v0, 0x1090008

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 94
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 95
    return-void
.end method


# virtual methods
.method public getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "choiceMode"    # Z

    .prologue
    const/4 v6, 0x0

    .line 122
    iget-object v4, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030035

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "row":Landroid/view/View;
    const v4, 0x7f0600ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "label":Landroid/widget/TextView;
    const v4, 0x7f0600aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 129
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz p4, :cond_0

    const/16 v2, 0xf

    .line 130
    .local v2, "padding":I
    :goto_0
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    iget-object v4, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->this$0:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;

    invoke-static {v4}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->access$1(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    if-nez p1, :cond_1

    const v4, 0x108006b

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :goto_2
    return-object v3

    .line 129
    .end local v2    # "padding":I
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 135
    .restart local v2    # "padding":I
    :cond_1
    const v4, 0x1080069

    goto :goto_1

    .line 138
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, p1}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0216

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->getCustomView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
