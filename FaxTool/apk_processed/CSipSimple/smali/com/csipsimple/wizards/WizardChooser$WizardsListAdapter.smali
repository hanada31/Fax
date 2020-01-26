.class Lcom/csipsimple/wizards/WizardChooser$WizardsListAdapter;
.super Landroid/widget/SimpleExpandableListAdapter;
.source "WizardChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/WizardChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WizardsListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csipsimple/wizards/WizardChooser;


# direct methods
.method public constructor <init>(Lcom/csipsimple/wizards/WizardChooser;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "groupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p8, "childLayout"    # I
    .param p9, "childFrom"    # [Ljava/lang/String;
    .param p10, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "groupData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p7, "childData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    iput-object p1, p0, Lcom/csipsimple/wizards/WizardChooser$WizardsListAdapter;->this$0:Lcom/csipsimple/wizards/WizardChooser;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 104
    invoke-direct/range {v0 .. v9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 105
    return-void
.end method

.method private bindView(Landroid/view/View;Ljava/util/Map;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;II)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v1, 0x0

    .line 115
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    const-string v0, "ICON"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 116
    return-void
.end method


# virtual methods
.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/SimpleExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/csipsimple/wizards/WizardChooser$WizardsListAdapter;->this$0:Lcom/csipsimple/wizards/WizardChooser;

    invoke-static {v1}, Lcom/csipsimple/wizards/WizardChooser;->access$0(Lcom/csipsimple/wizards/WizardChooser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/csipsimple/wizards/WizardChooser$WizardsListAdapter;->bindView(Landroid/view/View;Ljava/util/Map;II)V

    .line 110
    return-object v0
.end method
