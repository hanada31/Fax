.class public Lcom/csipsimple/wizards/WizardChooser;
.super Lcom/actionbarsherlock/app/SherlockExpandableListActivity;
.source "WizardChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/WizardChooser$WizardsListAdapter;
    }
.end annotation


# instance fields
.field private childDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockExpandableListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/wizards/WizardChooser;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/csipsimple/wizards/WizardChooser;->childDatas:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 87
    iget-object v3, p0, Lcom/csipsimple/wizards/WizardChooser;->childDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 88
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ID"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "wizard_id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/csipsimple/wizards/WizardChooser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "result":Landroid/content/Intent;
    const-string v3, "ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/csipsimple/wizards/WizardChooser;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/csipsimple/wizards/WizardChooser;->finish()V

    .line 96
    const/4 v3, 0x1

    return v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/WizardChooser;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/csipsimple/wizards/WizardChooser;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 56
    .local v12, "context":Landroid/content/Context;
    invoke-static {}, Lcom/csipsimple/wizards/WizardUtils;->getWizardsGroupedList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/csipsimple/wizards/WizardChooser;->childDatas:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/csipsimple/wizards/WizardChooser$WizardsListAdapter;

    .line 61
    invoke-static {v12}, Lcom/csipsimple/wizards/WizardUtils;->getWizardsGroups(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 62
    const v4, 0x1090006

    .line 63
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DISPLAY"

    aput-object v2, v5, v1

    .line 64
    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v6, v1

    .line 66
    iget-object v7, p0, Lcom/csipsimple/wizards/WizardChooser;->childDatas:Ljava/util/ArrayList;

    .line 67
    const v8, 0x7f03005d

    .line 68
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LABEL"

    aput-object v2, v9, v1

    const/4 v1, 0x1

    new-array v10, v1, [I

    const/4 v1, 0x0

    const v2, 0x1020014

    aput v2, v10, v1

    move-object v1, p0

    move-object v2, p0

    .line 58
    invoke-direct/range {v0 .. v10}, Lcom/csipsimple/wizards/WizardChooser$WizardsListAdapter;-><init>(Lcom/csipsimple/wizards/WizardChooser;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 71
    .local v0, "adapter":Lcom/csipsimple/wizards/WizardChooser$WizardsListAdapter;
    invoke-virtual {p0, v0}, Lcom/csipsimple/wizards/WizardChooser;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 73
    const v1, 0x7f060033

    invoke-virtual {p0, v1}, Lcom/csipsimple/wizards/WizardChooser;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 74
    .local v11, "cancelBt":Landroid/widget/Button;
    new-instance v1, Lcom/csipsimple/wizards/WizardChooser$1;

    invoke-direct {v1, p0}, Lcom/csipsimple/wizards/WizardChooser$1;-><init>(Lcom/csipsimple/wizards/WizardChooser;)V

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/csipsimple/wizards/WizardChooser;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/csipsimple/wizards/WizardChooser;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 83
    return-void
.end method
