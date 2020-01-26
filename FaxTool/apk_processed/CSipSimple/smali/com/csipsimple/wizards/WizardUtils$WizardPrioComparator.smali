.class Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;
.super Ljava/lang/Object;
.source "WizardUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/WizardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WizardPrioComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "infos1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "infos2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 93
    const-string v4, "PRIORITY_INT"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    const-string v4, "PRIORITY"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 95
    .local v2, "w1":Ljava/lang/Integer;
    const-string v4, "PRIORITY"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 97
    .local v3, "w2":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 98
    const/4 v4, -0x1

    .line 109
    .end local v2    # "w1":Ljava/lang/Integer;
    .end local v3    # "w2":Ljava/lang/Integer;
    :goto_0
    return v4

    .line 100
    .restart local v2    # "w1":Ljava/lang/Integer;
    .restart local v3    # "w2":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 101
    const/4 v4, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "w1":Ljava/lang/Integer;
    .end local v3    # "w2":Ljava/lang/Integer;
    :cond_1
    const-string v4, "LABEL"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "name1":Ljava/lang/String;
    const-string v4, "LABEL"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "name2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 109
    .end local v0    # "name1":Ljava/lang/String;
    .end local v1    # "name2":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
