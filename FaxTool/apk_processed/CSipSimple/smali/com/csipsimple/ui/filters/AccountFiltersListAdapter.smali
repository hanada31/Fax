.class public Lcom/csipsimple/ui/filters/AccountFiltersListAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "AccountFiltersListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 39
    const v0, 0x7f030036

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    new-instance v0, Lcom/csipsimple/models/Filter;

    invoke-direct {v0}, Lcom/csipsimple/models/Filter;-><init>()V

    .line 46
    .local v0, "filter":Lcom/csipsimple/models/Filter;
    invoke-virtual {v0, p3}, Lcom/csipsimple/models/Filter;->createFromDb(Landroid/database/Cursor;)V

    .line 47
    invoke-virtual {v0, p2}, Lcom/csipsimple/models/Filter;->getRepresentation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "filterDesc":Ljava/lang/String;
    const v4, 0x7f06005c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f0600ac

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 52
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v4, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const v4, 0x7f0200bd

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 59
    :pswitch_1
    const v4, 0x7f0200bb

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    const v4, 0x108003e

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 65
    :pswitch_3
    const v4, 0x7f0200b9

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 68
    :pswitch_4
    const v4, 0x7f0200ba

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
