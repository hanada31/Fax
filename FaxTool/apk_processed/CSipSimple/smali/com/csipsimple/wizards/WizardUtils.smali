.class public Lcom/csipsimple/wizards/WizardUtils;
.super Ljava/lang/Object;
.source "WizardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/wizards/WizardUtils$WizardInfo;,
        Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;
    }
.end annotation


# static fields
.field public static final EXPERT_WIZARD_TAG:Ljava/lang/String; = "EXPERT"

.field public static final ICON:Ljava/lang/String; = "ICON"

.field public static final ID:Ljava/lang/String; = "ID"

.field public static final LABEL:Ljava/lang/String; = "LABEL"

.field public static final LANG_DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final LOCAL_WIZARD_TAG:Ljava/lang/String; = "LOCAL"

.field public static final PRIORITY:Ljava/lang/String; = "PRIORITY"

.field public static final PRIORITY_INT:Ljava/lang/String; = "PRIORITY_INT"

.field private static WIZARDS_DICT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/csipsimple/wizards/WizardUtils$WizardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static initDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/csipsimple/wizards/WizardUtils;->initDone:Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWizardBitmap(Landroid/content/Context;Lcom/csipsimple/api/SipProfile;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 785
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 787
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-static {v2}, Lcom/csipsimple/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 788
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 790
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    iget-object v2, p1, Lcom/csipsimple/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public static getWizardClass(Ljava/lang/String;)Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    .locals 1
    .param p0, "wizardId"    # Ljava/lang/String;

    .prologue
    .line 766
    sget-boolean v0, Lcom/csipsimple/wizards/WizardUtils;->initDone:Z

    if-nez v0, :cond_0

    .line 767
    invoke-static {}, Lcom/csipsimple/wizards/WizardUtils;->initWizards()V

    .line 769
    :cond_0
    sget-object v0, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    return-object v0
.end method

.method public static getWizardClassInfos(Ljava/lang/Class;)Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/csipsimple/wizards/WizardUtils$WizardInfo;"
        }
    .end annotation

    .prologue
    .local p0, "wizard":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 748
    :try_start_0
    const-string v2, "getWizardInfo"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 749
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 750
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 754
    goto :goto_0
.end method

.method public static getWizardIconRes(Ljava/lang/String;)I
    .locals 2
    .param p0, "wizardId"    # Ljava/lang/String;

    .prologue
    .line 774
    invoke-static {p0}, Lcom/csipsimple/wizards/WizardUtils;->getWizardClass(Ljava/lang/String;)Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    move-result-object v0

    .line 775
    .local v0, "wizard_infos":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    if-eqz v0, :cond_0

    .line 776
    iget-boolean v1, v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->isGeneric:Z

    if-nez v1, :cond_0

    .line 777
    iget v1, v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->icon:I

    .line 780
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0200b6

    goto :goto_0
.end method

.method public static getWizardsGroupedList()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 830
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v4, "locale_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v3, "generic_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v9, "world_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v5, "others_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/csipsimple/wizards/WizardUtils;->getWizardsList()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 836
    .local v8, "wizards":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/csipsimple/wizards/WizardUtils$WizardInfo;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 868
    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;-><init>(Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;)V

    .line 869
    .local v0, "comparator":Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 870
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 871
    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 872
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 874
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    return-object v6

    .line 836
    .end local v0    # "comparator":Lcom/csipsimple/wizards/WizardUtils$WizardPrioComparator;
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 837
    .local v7, "wizard":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/csipsimple/wizards/WizardUtils$WizardInfo;>;"
    const/4 v2, 0x0

    .line 839
    .local v2, "found":Z
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    iget-object v12, v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->countries:[Ljava/util/Locale;

    array-length v13, v12

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v13, :cond_3

    .line 854
    :goto_2
    if-nez v2, :cond_2

    .line 855
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    iget-boolean v10, v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->isGeneric:Z

    if-eqz v10, :cond_6

    .line 856
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/csipsimple/wizards/WizardUtils;->wizardInfoToMap(Lcom/csipsimple/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    const/4 v2, 0x1

    .line 863
    :cond_2
    :goto_3
    if-nez v2, :cond_0

    .line 864
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/csipsimple/wizards/WizardUtils;->wizardInfoToMap(Lcom/csipsimple/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 839
    :cond_3
    aget-object v1, v12, v10

    .line 840
    .local v1, "country":Ljava/util/Locale;
    if-eqz v1, :cond_5

    .line 841
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 842
    const/4 v2, 0x1

    .line 843
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/csipsimple/wizards/WizardUtils;->wizardInfoToMap(Lcom/csipsimple/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 845
    :cond_4
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 846
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 847
    const/4 v2, 0x1

    .line 848
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/csipsimple/wizards/WizardUtils;->wizardInfoToMap(Lcom/csipsimple/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 839
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 858
    .end local v1    # "country":Ljava/util/Locale;
    :cond_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    iget-boolean v10, v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->isWorld:Z

    if-eqz v10, :cond_2

    .line 859
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/csipsimple/wizards/WizardUtils;->wizardInfoToMap(Lcom/csipsimple/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    const/4 v2, 0x1

    goto/16 :goto_3
.end method

.method public static getWizardsGroups(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 802
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "DISPLAY"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 808
    .restart local v0    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "DISPLAY"

    const v3, 0x7f0b02b5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->distributionWantsOtherProviders()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 815
    .restart local v0    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "DISPLAY"

    const v3, 0x7f0b02b4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 821
    .restart local v0    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "DISPLAY"

    const v3, 0x7f0b02b3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_0
    return-object v1
.end method

.method public static getWizardsList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/csipsimple/wizards/WizardUtils$WizardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    sget-boolean v0, Lcom/csipsimple/wizards/WizardUtils;->initDone:Z

    if-nez v0, :cond_0

    .line 759
    invoke-static {}, Lcom/csipsimple/wizards/WizardUtils;->initWizards()V

    .line 761
    :cond_0
    sget-object v0, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    return-object v0
.end method

.method private static initWizards()V
    .locals 13

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    .line 132
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BASIC"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BASIC"

    const-string v2, "Basic"

    .line 133
    const v3, 0x7f0200d8

    const/16 v4, 0x32

    .line 134
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 135
    const-class v8, Lcom/csipsimple/wizards/impl/Basic;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 132
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ADVANCED"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ADVANCED"

    const-string v2, "Advanced"

    .line 137
    const v3, 0x7f0200d2

    const/16 v4, 0xa

    .line 138
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 139
    const-class v8, Lcom/csipsimple/wizards/impl/Advanced;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 136
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "EXPERT"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "EXPERT"

    const-string v2, "Expert"

    .line 141
    const v3, 0x7f0200ef

    const/4 v4, 0x5

    .line 142
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 143
    const-class v8, Lcom/csipsimple/wizards/impl/Expert;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 140
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "LOCAL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "LOCAL"

    const-string v2, "Local"

    .line 145
    const v3, 0x7f0200ef

    const/4 v4, 0x1

    .line 146
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 147
    const-class v8, Lcom/csipsimple/wizards/impl/Local;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 144
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->distributionWantsOtherProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "OSTN"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "OSTN"

    const-string v2, "OSTN"

    .line 152
    const v3, 0x7f020118

    const/4 v4, 0x4

    .line 153
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 154
    const-class v8, Lcom/csipsimple/wizards/impl/OSTN;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 151
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "EKIGA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "EKIGA"

    const-string v2, "Ekiga"

    .line 159
    const v3, 0x7f0200ec

    const/16 v4, 0x32

    .line 160
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 161
    const-class v8, Lcom/csipsimple/wizards/impl/Ekiga;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 158
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIP2SIP"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIP2SIP"

    const-string v2, "Sip2Sip"

    .line 163
    const v3, 0x7f020126

    const/16 v4, 0xa

    .line 164
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 165
    const-class v8, Lcom/csipsimple/wizards/impl/Sip2Sip;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 162
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "IPTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "IPTEL"

    const-string v2, "IpTel"

    .line 167
    const v3, 0x7f020105

    const/16 v4, 0x1e

    .line 168
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 169
    const-class v8, Lcom/csipsimple/wizards/impl/IpTel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 166
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIPSORCERY"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIPSORCERY"

    const-string v2, "SIPSorcery"

    .line 171
    const v3, 0x7f02012c

    const/16 v4, 0x23

    .line 172
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 173
    const-class v8, Lcom/csipsimple/wizards/impl/SipSorcery;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 170
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "PBXES"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "PBXES"

    const-string v2, "Pbxes.org"

    .line 175
    const v3, 0x7f02011a

    const/16 v4, 0x14

    .line 176
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 177
    const-class v8, Lcom/csipsimple/wizards/impl/Pbxes;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 174
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ECS"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ECS"

    const-string v2, "Alcatel-Lucent OmniPCX Office"

    .line 179
    const v3, 0x7f0200d4

    const/4 v4, 0x5

    .line 180
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 181
    const-class v8, Lcom/csipsimple/wizards/impl/OXO810;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 178
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ITTELENET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ITTELENET"

    const-string v2, "ITTelenet"

    .line 183
    const v3, 0x7f020106

    const/16 v4, 0xa

    .line 184
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 185
    const-class v8, Lcom/csipsimple/wizards/impl/ITTelenet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 182
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "DELTATHREE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "DELTATHREE"

    const-string v2, "deltathree"

    .line 187
    const v3, 0x7f0200e9

    const/16 v4, 0x23

    .line 188
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 189
    const-class v8, Lcom/csipsimple/wizards/impl/DeltaThree;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 186
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "CAMUNDANET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "CAMUNDANET"

    const-string v2, "CamundaNet"

    .line 191
    const v3, 0x7f0200e3

    const/16 v4, 0xf

    .line 192
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 193
    const-class v8, Lcom/csipsimple/wizards/impl/CamundaNet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 190
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BETAMAX"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BETAMAX"

    const-string v2, "Betamax clone"

    .line 195
    const v3, 0x7f0200d8

    const/16 v4, 0x1e

    .line 196
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 197
    const-class v8, Lcom/csipsimple/wizards/impl/Betamax;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 194
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIPCEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIPCEL"

    const-string v2, "SipCel Telecom"

    .line 199
    const v3, 0x7f020127

    const/16 v4, 0xe

    .line 200
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 201
    const-class v8, Lcom/csipsimple/wizards/impl/SipCel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 198
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "LOCALPHONE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "LOCALPHONE"

    const-string v2, "Localphone"

    .line 203
    const v3, 0x7f020108

    const/16 v4, 0xa

    .line 204
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 205
    const-class v8, Lcom/csipsimple/wizards/impl/Localphone;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 202
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BROADSOFT"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BROADSOFT"

    const-string v2, "Broadsoft"

    .line 207
    const v3, 0x7f0200de

    const/16 v4, 0x9

    .line 208
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 209
    const-class v8, Lcom/csipsimple/wizards/impl/Broadsoft;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 206
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "DVCNG"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "DVCNG"

    const-string v2, "DVC\'NG"

    .line 211
    const v3, 0x7f0200ea

    const/16 v4, 0x10

    .line 212
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 213
    const-class v8, Lcom/csipsimple/wizards/impl/DvcNg;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 210
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "PFINGO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "PFINGO"

    const-string v2, "Pfingo"

    .line 215
    const v3, 0x7f02011c

    const/16 v4, 0x13

    .line 216
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 217
    const-class v8, Lcom/csipsimple/wizards/impl/Pfingo;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 214
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "FASTVOIP"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "FASTVOIP"

    const-string v2, "FastVoip"

    .line 219
    const v3, 0x7f0200f0

    const/16 v4, 0x14

    .line 220
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 221
    const-class v8, Lcom/csipsimple/wizards/impl/FastVoip;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 218
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIPWISE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIPWISE"

    const-string v2, "sipwise"

    .line 223
    const v3, 0x7f02012e

    const/16 v4, 0x22

    .line 224
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 225
    const-class v8, Lcom/csipsimple/wizards/impl/SipWise;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 222
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPMS"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPMS"

    const-string v2, "VoIP.ms"

    .line 227
    const v3, 0x7f020140

    const/16 v4, 0x12

    .line 228
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 229
    const-class v8, Lcom/csipsimple/wizards/impl/VoipMS;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 226
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SONETEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SONETEL"

    const-string v2, "Sonetel"

    .line 231
    const v3, 0x7f020130

    const/16 v4, 0x11

    .line 232
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 233
    const-class v8, Lcom/csipsimple/wizards/impl/Sonetel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 230
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "RAPIDVOX"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "RAPIDVOX"

    const-string v2, "Rapidvox"

    .line 235
    const v3, 0x7f020120

    const/16 v4, 0x13

    .line 236
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 237
    const-class v8, Lcom/csipsimple/wizards/impl/Rapidvox;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 234
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "TANSTAGI"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "TANSTAGI"

    const-string v2, "tanstagi"

    .line 239
    const v3, 0x7f020134

    const/16 v4, 0x23

    .line 240
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 241
    const-class v8, Lcom/csipsimple/wizards/impl/Tanstagi;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 238
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "NYMGO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "NYMGO"

    const-string v2, "Nymgo"

    .line 243
    const v3, 0x7f020113

    const/16 v4, 0x12

    .line 244
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 245
    const-class v8, Lcom/csipsimple/wizards/impl/Nymgo;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 242
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIPKOM"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIPKOM"

    const-string v2, "sipkom"

    .line 247
    const v3, 0x7f020129

    const/16 v4, 0x12

    .line 248
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 249
    const-class v8, Lcom/csipsimple/wizards/impl/Sipkom;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 246
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ABCVOIP"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ABCVOIP"

    const-string v2, "ABC-VoIP"

    .line 251
    const v3, 0x7f0200d1

    const/16 v4, 0x12

    .line 252
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 253
    const-class v8, Lcom/csipsimple/wizards/impl/AbcVoip;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 250
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "AMIVOX"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "AMIVOX"

    const-string v2, "Amivox"

    .line 255
    const v3, 0x7f0200d5

    const/16 v4, 0x12

    .line 256
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 257
    const-class v8, Lcom/csipsimple/wizards/impl/Amivox;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 254
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPNOR"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPNOR"

    const-string v2, "VOIPNOR"

    .line 259
    const v3, 0x7f020142

    const/16 v4, 0x9

    .line 260
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 261
    const-class v8, Lcom/csipsimple/wizards/impl/VoipNor;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 258
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "CRYPTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "CRYPTEL"

    const-string v2, "Cryptel Inc"

    .line 263
    const v3, 0x7f0200e8

    const/16 v4, 0x9

    .line 264
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 265
    const-class v8, Lcom/csipsimple/wizards/impl/Cryptel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 262
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "FLOWROUTE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "FLOWROUTE"

    const-string v2, "Flowroute"

    .line 267
    const v3, 0x7f0200f2

    const/16 v4, 0x9

    .line 268
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 269
    const-class v8, Lcom/csipsimple/wizards/impl/Flowroute;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 266
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "REACHPHONES"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "REACHPHONES"

    const-string v2, "ReachPhones.com"

    .line 271
    const v3, 0x7f020121

    const/16 v4, 0x9

    .line 272
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 273
    const-class v8, Lcom/csipsimple/wizards/impl/ReachPhones;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 270
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ZENG"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ZENG"

    const-string v2, "Zeng"

    .line 275
    const v3, 0x7f02014c

    const/16 v4, 0x9

    .line 276
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 277
    const-class v8, Lcom/csipsimple/wizards/impl/Zeng;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 274
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPTIGER"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPTIGER"

    const-string v2, "VoipTiger"

    .line 279
    const v3, 0x7f020145

    const/16 v4, 0x9

    .line 280
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 281
    const-class v8, Lcom/csipsimple/wizards/impl/VoipTiger;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 278
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "MITELEFONO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "MITELEFONO"

    const-string v2, "MiTelefono"

    .line 283
    const v3, 0x7f02010b

    const/16 v4, 0x9

    .line 284
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 285
    const-class v8, Lcom/csipsimple/wizards/impl/MiTelefono;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 282
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "CATITEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "CATITEL"

    const-string v2, "Catitel"

    .line 287
    const v3, 0x7f0200e4

    const/16 v4, 0x9

    .line 288
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 289
    const-class v8, Lcom/csipsimple/wizards/impl/Catitel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 286
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "TECOBU"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "TECOBU"

    const-string v2, "TECOBU"

    .line 291
    const v3, 0x7f020135

    const/16 v4, 0x13

    .line 292
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 293
    const-class v8, Lcom/csipsimple/wizards/impl/Tecobu;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 290
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "MESSAGENET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "MESSAGENET"

    const-string v2, "Messagenet"

    .line 295
    const v3, 0x7f02010a

    const/16 v4, 0x14

    .line 296
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 297
    const-class v8, Lcom/csipsimple/wizards/impl/Messagenet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 294
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "CALLCENTRIC"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "CALLCENTRIC"

    const-string v2, "Callcentric"

    .line 302
    const v3, 0x7f0200e1

    const/16 v4, 0xa

    .line 303
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 304
    const-class v8, Lcom/csipsimple/wizards/impl/Callcentric;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 301
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "EUTELIA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "EUTELIA"

    const-string v2, "Eutelia"

    .line 306
    const v3, 0x7f0200ee

    const/16 v4, 0x1e

    .line 307
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 308
    const-class v8, Lcom/csipsimple/wizards/impl/Eutelia;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 305
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "WIMOBILE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "WIMOBILE"

    const-string v2, "WiMobile"

    .line 310
    const v3, 0x7f020149

    const/16 v4, 0x14

    .line 311
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 312
    const-class v8, Lcom/csipsimple/wizards/impl/WiMobile;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 309
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "FREEPHONIE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "FREEPHONIE"

    const-string v2, "Freephonie"

    .line 314
    const v3, 0x7f0200f5

    const/16 v4, 0x1e

    .line 315
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 316
    const-class v8, Lcom/csipsimple/wizards/impl/Freephonie;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 313
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "NEUFTALK"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "NEUFTALK"

    const-string v2, "NeufTalk"

    .line 319
    const v3, 0x7f020112

    const/4 v4, 0x1

    .line 320
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 321
    const-class v8, Lcom/csipsimple/wizards/impl/NeufTalk;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 318
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "LIBERTALK"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "LIBERTALK"

    const-string v2, "SFR LiberTalk"

    .line 323
    const v3, 0x7f020125

    const/16 v4, 0x19

    .line 324
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 325
    const-class v8, Lcom/csipsimple/wizards/impl/LiberTalk;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 322
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "IPPI"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "IPPI"

    const-string v2, "ippi"

    .line 327
    const v3, 0x7f020103

    const/16 v4, 0x15

    .line 328
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 329
    const-class v8, Lcom/csipsimple/wizards/impl/Ippi;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 326
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "KEYYO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "KEYYO"

    const-string v2, "Keyyo"

    .line 331
    const v3, 0x7f020107

    const/16 v4, 0x9

    .line 332
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 333
    const-class v8, Lcom/csipsimple/wizards/impl/Keyyo;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 330
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "PHONZO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "PHONZO"

    const-string v2, "Phonzo"

    .line 335
    const v3, 0x7f02011d

    const/16 v4, 0xa

    .line 336
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "SE"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 337
    const-class v8, Lcom/csipsimple/wizards/impl/Phonzo;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 334
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "PLANETPHONE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "PLANETPHONE"

    const-string v2, "PlanetPhone"

    .line 339
    const v3, 0x7f02011e

    const/16 v4, 0xa

    .line 340
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "bg_BG"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 341
    const-class v8, Lcom/csipsimple/wizards/impl/PlanetPhone;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 338
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIPGATE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIPGATE"

    const-string v2, "Sipgate"

    .line 343
    const v3, 0x7f020128

    const/16 v4, 0xa

    .line 344
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 345
    const-class v8, Lcom/csipsimple/wizards/impl/Sipgate;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 342
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "PENNYTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "PENNYTEL"

    const-string v2, "Pennytel"

    .line 347
    const v3, 0x7f02011b

    const/16 v4, 0xa

    .line 348
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "en_AU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 349
    const-class v8, Lcom/csipsimple/wizards/impl/Pennytel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 346
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ONSIP"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ONSIP"

    const-string v2, "OnSIP"

    .line 357
    const v3, 0x7f020115

    const/16 v4, 0x1e

    .line 358
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 359
    const-class v8, Lcom/csipsimple/wizards/impl/OnSip;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 356
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BTONE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BTONE"

    const-string v2, "BlueTone"

    .line 367
    const v3, 0x7f0200e0

    const/16 v4, 0x14

    .line 368
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 369
    const-class v8, Lcom/csipsimple/wizards/impl/BTone;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 366
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "IINET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "IINET"

    const-string v2, "iinet"

    .line 371
    const v3, 0x7f0200fd

    const/4 v4, 0x5

    .line 372
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "EN"

    const-string v12, "au"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 373
    const-class v8, Lcom/csipsimple/wizards/impl/IiNet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 370
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VPHONE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VPHONE"

    const-string v2, "VTel"

    .line 375
    const v3, 0x7f020148

    const/4 v4, 0x5

    .line 376
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "EN"

    const-string v12, "au"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 377
    const-class v8, Lcom/csipsimple/wizards/impl/VPhone;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 374
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "UKRTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "UKRTEL"

    const-string v2, "UkrTelecom"

    .line 379
    const v3, 0x7f020138

    const/16 v4, 0xa

    .line 380
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "UK"

    const-string v12, "ua"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 381
    const-class v8, Lcom/csipsimple/wizards/impl/UkrTelecom;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 378
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "IP2MOBILE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "IP2MOBILE"

    const-string v2, "ip2Mobile"

    .line 383
    const v3, 0x7f020101

    const/16 v4, 0xa

    .line 384
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "DK"

    const-string v12, "dk"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 385
    const-class v8, Lcom/csipsimple/wizards/impl/Ip2Mobile;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 382
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SPEAKEZI"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SPEAKEZI"

    const-string v2, "Speakezi Telecoms"

    .line 387
    const v3, 0x7f020131

    const/16 v4, 0x1e

    .line 388
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "EN"

    const-string v12, "za"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, "AF"

    const-string v12, "za"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 389
    const-class v8, Lcom/csipsimple/wizards/impl/Speakezi;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 386
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "POZITEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "POZITEL"

    const-string v2, "Pozitel"

    .line 391
    const v3, 0x7f02011f

    const/16 v4, 0x1e

    .line 392
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "TR"

    const-string v12, "tr"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 393
    const-class v8, Lcom/csipsimple/wizards/impl/Pozitel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 390
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "MONDOTALK"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "MONDOTALK"

    const-string v2, "Mondotalk"

    .line 395
    const v3, 0x7f02010e

    const/16 v4, 0x14

    .line 396
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "EN"

    const-string v12, "au"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, "EN"

    const-string v12, "us"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/util/Locale;

    const-string v8, "EN"

    const-string v12, "nz"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 397
    const-class v8, Lcom/csipsimple/wizards/impl/Mondotalk;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 394
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "A1"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "A1"

    const-string v2, "A1"

    .line 399
    const v3, 0x7f0200d0

    const/16 v4, 0x14

    .line 400
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "DE"

    const-string v12, "at"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 401
    const-class v8, Lcom/csipsimple/wizards/impl/A1;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 398
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SCARLET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SCARLET"

    const-string v2, "scarlet.be"

    .line 403
    const v3, 0x7f020124

    const/16 v4, 0xa

    .line 404
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 405
    const-string v7, "fr_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "nl_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "nl_NL"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 406
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-class v8, Lcom/csipsimple/wizards/impl/Scarlet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 402
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VONO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VONO"

    const-string v2, "vono"

    .line 408
    const v3, 0x7f020146

    const/16 v4, 0xa

    .line 409
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "PT"

    const-string v12, "br"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 410
    const-class v8, Lcom/csipsimple/wizards/impl/Vono;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 407
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "OVH"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "OVH"

    const-string v2, "Ovh"

    .line 412
    const v3, 0x7f020119

    const/16 v4, 0x14

    .line 413
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 414
    sget-object v7, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "fr_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 415
    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 416
    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v7, v5, v6

    .line 417
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 418
    const-class v8, Lcom/csipsimple/wizards/impl/Ovh;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 411
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "FAYN"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "FAYN"

    const-string v2, "Fayn"

    .line 420
    const v3, 0x7f0200f1

    const/16 v4, 0x1e

    .line 421
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 422
    new-instance v7, Ljava/util/Locale;

    const-string v8, "CS"

    const-string v12, "cz"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 423
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 424
    const-class v8, Lcom/csipsimple/wizards/impl/Fayn;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 419
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VIVA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VIVA"

    const-string v2, "Viva VoIP"

    .line 426
    const v3, 0x7f02013c

    const/16 v4, 0x1e

    .line 427
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 428
    new-instance v7, Ljava/util/Locale;

    const-string v8, "EL"

    const-string v12, "gr"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 429
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 430
    const-class v8, Lcom/csipsimple/wizards/impl/Viva;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 425
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SAPO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SAPO"

    const-string v2, "Sapo"

    .line 432
    const v3, 0x7f020122

    const/16 v4, 0x14

    .line 433
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "PT"

    const-string v12, "pt"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 434
    const-class v8, Lcom/csipsimple/wizards/impl/Sapo;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 431
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BROADVOICE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BROADVOICE"

    const-string v2, "BroadVoice"

    .line 436
    const v3, 0x7f0200df

    const/16 v4, 0x13

    .line 437
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 438
    const-class v8, Lcom/csipsimple/wizards/impl/BroadVoice;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 435
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIPTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIPTEL"

    const-string v2, "Siptel"

    .line 440
    const v3, 0x7f02012d

    const/16 v4, 0xa

    .line 441
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "PT"

    const-string v12, "pt"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 442
    const-class v8, Lcom/csipsimple/wizards/impl/SiptelPt;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 439
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "OPTIMUS"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "OPTIMUS"

    const-string v2, "Optimus"

    .line 444
    const v3, 0x7f020116

    const/16 v4, 0x9

    .line 445
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "PT"

    const-string v12, "pt"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 446
    const-class v8, Lcom/csipsimple/wizards/impl/Optimus;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 443
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "IPSHKA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "IPSHKA"

    const-string v2, "IPshka"

    .line 448
    const v3, 0x7f020104

    const/16 v4, 0xa

    .line 449
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "UK"

    const-string v12, "ua"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 450
    const-class v8, Lcom/csipsimple/wizards/impl/IPshka;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 447
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ZADARMA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ZADARMA"

    const-string v2, "Zadarma"

    .line 452
    const v3, 0x7f02014b

    const/16 v4, 0xa

    .line 453
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "UK"

    const-string v12, "ua"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "ru_RU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "cs_CZ"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "ro_RO"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "hr_HR"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "bg_BG"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 454
    const-class v8, Lcom/csipsimple/wizards/impl/Zadarma;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 451
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BLUEFACE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BLUEFACE"

    const-string v2, "Blueface"

    .line 456
    const v3, 0x7f0200dd

    const/16 v4, 0x13

    .line 457
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, "EN"

    const-string v12, "ie"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 458
    const-class v8, Lcom/csipsimple/wizards/impl/Blueface;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 455
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "IPCOMMS"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "IPCOMMS"

    const-string v2, "IPComms"

    .line 460
    const v3, 0x7f020102

    const/16 v4, 0x13

    .line 461
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 462
    const-class v8, Lcom/csipsimple/wizards/impl/IPComms;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 459
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPTELIE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPTELIE"

    const-string v2, "Voiptel Mobile"

    .line 464
    const v3, 0x7f020144

    const/16 v4, 0x14

    .line 465
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 466
    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "en_IE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "en_AU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 467
    const-string v7, "es_ES"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "es_CO"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 468
    const-class v8, Lcom/csipsimple/wizards/impl/VoipTel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 463
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "EASYBELL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "EASYBELL"

    const-string v2, "EasyBell"

    .line 470
    const v3, 0x7f0200eb

    const/16 v4, 0x14

    .line 471
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 472
    const-class v8, Lcom/csipsimple/wizards/impl/EasyBell;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 469
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "NETELIP"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "NETELIP"

    const-string v2, "NETELIP"

    .line 474
    const v3, 0x7f020111

    const/4 v4, 0x5

    .line 475
    const/16 v5, 0x16

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 476
    new-instance v7, Ljava/util/Locale;

    const-string v8, "es"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, "pt"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 477
    const-string v7, "bg_BG"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "nl_NL"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-object v7, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 478
    new-instance v7, Ljava/util/Locale;

    const-string v8, "sv"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "da_DA"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "nb_NO"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "nn_NO"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xd

    .line 479
    const-string v7, "ru_RU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "tr_TR"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "el_GR"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "hu_HU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x11

    .line 480
    const-string v7, "cs_CZ"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x12

    const-string v7, "ro_RO"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x13

    const-string v7, "hr_HR"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x14

    const-string v7, "uk_UA"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x15

    .line 481
    const-string v7, "ja_JP"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 482
    const-class v8, Lcom/csipsimple/wizards/impl/Netelip;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 473
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "TELSOME"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "TELSOME"

    const-string v2, "Telsome"

    .line 484
    const v3, 0x7f020136

    const/16 v4, 0x13

    .line 485
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 486
    const-string v7, "es_ES"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 487
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 488
    const-class v8, Lcom/csipsimple/wizards/impl/Telsome;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 483
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "INNOTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "INNOTEL"

    const-string v2, "Innotel"

    .line 490
    const v3, 0x7f0200fe

    const/16 v4, 0x13

    .line 491
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 492
    const-string v7, "hu_HU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 493
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 494
    const-class v8, Lcom/csipsimple/wizards/impl/Innotel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 489
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "EUROTELEFON"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "EUROTELEFON"

    const-string v2, "EuroTELEFON"

    .line 496
    const v3, 0x7f0200ed

    const/16 v4, 0x13

    .line 497
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 498
    new-instance v7, Ljava/util/Locale;

    const-string v8, "pl"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 499
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 500
    const-class v8, Lcom/csipsimple/wizards/impl/EuroTelefon;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 495
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ODORIK"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ODORIK"

    const-string v2, "Odorik.cz"

    .line 502
    const v3, 0x7f020114

    const/16 v4, 0x13

    .line 503
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 504
    const-string v7, "cs_CZ"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, "sk"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/util/Locale;

    const-string v8, "sl"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "uk_UA"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 505
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 506
    const-class v8, Lcom/csipsimple/wizards/impl/Odorik;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 501
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "FREEPHONELINECA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "FREEPHONELINECA"

    const-string v2, "Freephoneline.ca"

    .line 508
    const v3, 0x7f0200f4

    const/16 v4, 0x13

    .line 509
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 510
    sget-object v7, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    aput-object v7, v5, v6

    .line 511
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 512
    const-class v8, Lcom/csipsimple/wizards/impl/FreephoneLineCa;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 507
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIPNET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIPNET"

    const-string v2, "Sipnet"

    .line 514
    const v3, 0x7f02012b

    const/16 v4, 0xa

    .line 515
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 516
    const-string v7, "ru_RU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 517
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 518
    const-class v8, Lcom/csipsimple/wizards/impl/Sipnet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 513
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "CELLIP"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "CELLIP"

    const-string v2, "Cellip"

    .line 520
    const v3, 0x7f0200e5

    const/16 v4, 0xa

    .line 521
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 522
    new-instance v7, Ljava/util/Locale;

    const-string v8, "sv"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 523
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 524
    const-class v8, Lcom/csipsimple/wizards/impl/Cellip;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 519
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SBOHEMPEVNALINKO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SBOHEMPEVNALINKO"

    const-string v2, "sbohempevnalinko.cz"

    .line 526
    const v3, 0x7f020123

    const/16 v4, 0x13

    .line 527
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 528
    const-string v7, "cs_CZ"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 529
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 530
    const-class v8, Lcom/csipsimple/wizards/impl/Sbohempevnalinko;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 525
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "GRADWELL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "GRADWELL"

    const-string v2, "Gradwell"

    .line 532
    const v3, 0x7f0200f9

    const/16 v4, 0x13

    .line 533
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 534
    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v7, v5, v6

    .line 535
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 536
    const-class v8, Lcom/csipsimple/wizards/impl/Gradwell;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 531
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BGTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BGTEL"

    const-string v2, "BG-Tel"

    .line 538
    const v3, 0x7f0200db

    const/16 v4, 0xa

    .line 539
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "bg_BG"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 540
    new-instance v7, Ljava/util/Locale;

    const-string v8, "EL"

    const-string v12, "gr"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 541
    const-class v8, Lcom/csipsimple/wizards/impl/BGTel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 537
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BELCENTRALE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BELCENTRALE"

    const-string v2, "Belcentrale"

    .line 543
    const v3, 0x7f0200da

    const/16 v4, 0x14

    .line 544
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "nl_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "nl_NL"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "fr_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 545
    const-class v8, Lcom/csipsimple/wizards/impl/BelCentrale;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 542
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "FREECONET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "FREECONET"

    const-string v2, "Freeconet"

    .line 548
    const v3, 0x7f0200f3

    const/16 v4, 0x13

    .line 549
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 550
    new-instance v7, Ljava/util/Locale;

    const-string v8, "pl"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 551
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 552
    const-class v8, Lcom/csipsimple/wizards/impl/Freeconet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 547
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "TLENOFON"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "TLENOFON"

    const-string v2, "Tlenofon"

    .line 554
    const v3, 0x7f020137

    const/16 v4, 0x13

    .line 555
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 556
    new-instance v7, Ljava/util/Locale;

    const-string v8, "pl"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 557
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 558
    const-class v8, Lcom/csipsimple/wizards/impl/Tlenofon;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 553
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VANBERGSYSTEMS"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VANBERGSYSTEMS"

    const-string v2, "Vanbergsystems"

    .line 560
    const v3, 0x7f020139

    const/16 v4, 0x13

    .line 561
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 562
    new-instance v7, Ljava/util/Locale;

    const-string v8, "pl"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 563
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 564
    const-class v8, Lcom/csipsimple/wizards/impl/Vanbergsystems;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 559
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SMARTO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SMARTO"

    const-string v2, "Smarto"

    .line 566
    const v3, 0x7f02012f

    const/16 v4, 0x13

    .line 567
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 568
    new-instance v7, Ljava/util/Locale;

    const-string v8, "pl"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 569
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 570
    const-class v8, Lcom/csipsimple/wizards/impl/Smarto;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 565
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "INTERPHONE365"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "INTERPHONE365"

    const-string v2, "INTERPHONE365"

    .line 572
    const v3, 0x7f0200ff

    const/16 v4, 0x13

    .line 573
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 574
    const-string v7, "es_AR"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "es_ES"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 575
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 576
    const-class v8, Lcom/csipsimple/wizards/impl/Interphone365;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 571
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BEEZTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BEEZTEL"

    const-string v2, "Beeztel"

    .line 578
    const v3, 0x7f0200d9

    const/16 v4, 0x13

    .line 579
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "es"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, "en"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/util/Locale;

    const-string v8, "pt"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/util/Locale;

    const-string v8, "fr"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 580
    const-class v8, Lcom/csipsimple/wizards/impl/Beeztel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 577
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "COTAS"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "COTAS"

    const-string v2, "Cotas Line@net"

    .line 582
    const v3, 0x7f0200e7

    const/16 v4, 0x13

    .line 583
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "es_CO"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 584
    const-class v8, Lcom/csipsimple/wizards/impl/Cotas;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 581
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BALSES"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BALSES"

    const-string v2, "Balses"

    .line 586
    const v3, 0x7f0200d7

    const/16 v4, 0x13

    .line 587
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "tr_TR"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 588
    const-class v8, Lcom/csipsimple/wizards/impl/Balses;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 585
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ZONPT"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ZONPT"

    const-string v2, "Zon Phone"

    .line 590
    const v3, 0x7f02014d

    const/16 v4, 0x13

    .line 591
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "pt_PT"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 592
    const-class v8, Lcom/csipsimple/wizards/impl/ZonPt;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 589
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ORBTALK"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ORBTALK"

    const-string v2, "Orbtalk"

    .line 594
    const v3, 0x7f020117

    const/16 v4, 0x13

    .line 595
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 596
    const-class v8, Lcom/csipsimple/wizards/impl/Orbtalk;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 593
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "HALOOCENTRALA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "HALOOCENTRALA"

    const-string v2, "Ha-loo centrala"

    .line 598
    const v3, 0x7f0200fc

    const/16 v4, 0x13

    .line 599
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "CS"

    const-string v12, "cz"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 600
    const-class v8, Lcom/csipsimple/wizards/impl/HalooCentrala;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 597
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "HALOO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "HALOO"

    const-string v2, "Ha-loo"

    .line 602
    const v3, 0x7f0200fb

    const/16 v4, 0x13

    .line 603
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "CS"

    const-string v12, "cz"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 604
    const-class v8, Lcom/csipsimple/wizards/impl/Haloo;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 601
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPBEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPBEL"

    const-string v2, "VoIPBel"

    .line 606
    const v3, 0x7f02013d

    const/16 v4, 0x13

    .line 607
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "nl_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "nl_NL"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "fr_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 608
    const-class v8, Lcom/csipsimple/wizards/impl/VoipBel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 605
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "GLOBTELECOM"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "GLOBTELECOM"

    const-string v2, "Globtelecom"

    .line 610
    const v3, 0x7f0200f8

    const/16 v4, 0xa

    .line 611
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "ru_RU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 612
    const-class v8, Lcom/csipsimple/wizards/impl/Globtelecom;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 609
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "CONGSTARTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "CONGSTARTEL"

    const-string v2, "Congstar Telekom"

    .line 614
    const v3, 0x7f0200e6

    const/16 v4, 0xa

    .line 615
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 616
    const-class v8, Lcom/csipsimple/wizards/impl/CongstarTelekom;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 613
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "CONGSTARQSC"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "CONGSTARQSC"

    const-string v2, "Congstar QSC"

    .line 618
    const v3, 0x7f0200e6

    const/16 v4, 0xa

    .line 619
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 620
    const-class v8, Lcom/csipsimple/wizards/impl/CongstarQSC;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 617
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPLLAMA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPLLAMA"

    const-string v2, "VOIPLLAMA"

    .line 622
    const v3, 0x7f02013f

    const/16 v4, 0xa

    .line 623
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "es_ES"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 624
    const-class v8, Lcom/csipsimple/wizards/impl/VoipLlama;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 621
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "XNET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "XNET"

    const-string v2, "XNet"

    .line 626
    const v3, 0x7f02014a

    const/16 v4, 0xa

    .line 627
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "EN"

    const-string v12, "nz"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 628
    const-class v8, Lcom/csipsimple/wizards/impl/XNet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 625
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "MUNDOR"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "MUNDOR"

    const-string v2, "Mundo-R"

    .line 630
    const v3, 0x7f020110

    const/16 v4, 0xa

    .line 631
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "es_ES"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 632
    const-class v8, Lcom/csipsimple/wizards/impl/MundoR;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 629
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VEGATEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VEGATEL"

    const-string v2, "Vegatel"

    .line 634
    const v3, 0x7f02013a

    const/16 v4, 0xa

    .line 635
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "ru_RU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 636
    const-class v8, Lcom/csipsimple/wizards/impl/Vegatel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 633
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "MOBILE4U"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "MOBILE4U"

    const-string v2, "Mobile4u"

    .line 638
    const v3, 0x7f02010d

    const/16 v4, 0xa

    .line 639
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "hu_HU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 640
    const-class v8, Lcom/csipsimple/wizards/impl/Mobile4U;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 637
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "FRINGTALKTW"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "FRINGTALKTW"

    const-string v2, "fringTalk"

    .line 642
    const v3, 0x7f0200f6

    const/16 v4, 0xa

    .line 643
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "zh_TW"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 644
    const-class v8, Lcom/csipsimple/wizards/impl/FringTalkTw;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 641
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPMUCH"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPMUCH"

    const-string v2, "VoIP Much"

    .line 646
    const v3, 0x7f020141

    const/16 v4, 0x14

    .line 647
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 648
    const-class v8, Lcom/csipsimple/wizards/impl/VoipMuch;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 645
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPPLANET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPPLANET"

    const-string v2, "VoIP Planet"

    .line 650
    const v3, 0x7f020143

    const/16 v4, 0xa

    .line 651
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 652
    const-string v7, "nl_NL"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 653
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-class v8, Lcom/csipsimple/wizards/impl/VoipPlanet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 649
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ZENG_CN"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ZENG_CN"

    const-string v2, "\u667a\u901a"

    .line 655
    const v3, 0x7f02014c

    const/16 v4, 0x9

    .line 656
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "zh_CN"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "zh_TW"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 657
    const-class v8, Lcom/csipsimple/wizards/impl/ZengCn;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 654
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SIPME"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SIPME"

    const-string v2, "sipme"

    .line 659
    const v3, 0x7f02012a

    const/16 v4, 0x9

    .line 660
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "he"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 661
    const-class v8, Lcom/csipsimple/wizards/impl/SipMe;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 658
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "TONLINE"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "TONLINE"

    const-string v2, "t-online.de"

    .line 663
    const v3, 0x7f020133

    const/16 v4, 0x9

    .line 664
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 665
    const-class v8, Lcom/csipsimple/wizards/impl/TOnline;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 662
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOOCALL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOOCALL"

    const-string v2, "voocall.cz"

    .line 667
    const v3, 0x7f020147

    const/16 v4, 0x9

    .line 668
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "cs_CZ"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 669
    const-class v8, Lcom/csipsimple/wizards/impl/Voocall;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 666
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "MOBEX"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "MOBEX"

    const-string v2, "Mobex"

    .line 671
    const v3, 0x7f02010c

    const/16 v4, 0x9

    .line 672
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "PT"

    const-string v12, "br"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 673
    const-class v8, Lcom/csipsimple/wizards/impl/Mobex;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 670
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "SVANTO"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "SVANTO"

    const-string v2, "Svanto"

    .line 675
    const v3, 0x7f020132

    const/4 v4, 0x5

    .line 676
    const/16 v5, 0xa

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    .line 677
    new-instance v7, Ljava/util/Locale;

    const-string v8, "pl"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 678
    const-string v7, "fr_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "nl_BE"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "nl_NL"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 679
    const-string v7, "fr_CH"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "de_CH"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 680
    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "es_ES"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "pt_PT"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    .line 681
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 682
    const-class v8, Lcom/csipsimple/wizards/impl/Svanto;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 674
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VITELITY"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VITELITY"

    const-string v2, "Vitelity"

    .line 684
    const v3, 0x7f02013b

    const/16 v4, 0x9

    .line 685
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 686
    const-class v8, Lcom/csipsimple/wizards/impl/Vitelity;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 683
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "FRITZBOX"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "FRITZBOX"

    const-string v2, "Fritz!Box"

    .line 688
    const v3, 0x7f0200f7

    const/16 v4, 0x9

    .line 689
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 690
    const-class v8, Lcom/csipsimple/wizards/impl/Fritzbox;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 687
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BLICNET"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "BLICNET"

    const-string v2, "Blicnet"

    .line 692
    const v3, 0x7f0200dc

    const/16 v4, 0x13

    .line 693
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "bs"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, "sr"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/util/Locale;

    const-string v8, "hr"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 694
    const-class v8, Lcom/csipsimple/wizards/impl/Blicnet;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 691
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "MEGAVOIP"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "MEGAVOIP"

    const-string v2, "Megavoip Telecom"

    .line 696
    const v3, 0x7f020109

    const/16 v4, 0xc

    .line 697
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "PT"

    const-string v12, "br"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 698
    const-class v8, Lcom/csipsimple/wizards/impl/MegaVoip;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 695
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "MULTIFONRU"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "MULTIFONRU"

    const-string v2, "Multifon.ru"

    .line 700
    const v3, 0x7f02010f

    const/16 v4, 0xc

    .line 701
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "ru_RU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 702
    const-class v8, Lcom/csipsimple/wizards/impl/MultifonRu;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 699
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "VOIPDOUP"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "VOIPDOUP"

    const-string v2, "Voipdoup"

    .line 704
    const v3, 0x7f02013e

    const/16 v4, 0x13

    .line 705
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "zh_CN"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "zh_TW"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 706
    const-class v8, Lcom/csipsimple/wizards/impl/Voipdoup;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 703
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "AJTEL"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "AJTEL"

    const-string v2, "Ajtel"

    .line 708
    const v3, 0x7f0200d3

    const/16 v4, 0x13

    .line 709
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "es"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 710
    const-class v8, Lcom/csipsimple/wizards/impl/Ajtel;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 707
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "CALLROMANIA"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "CALLROMANIA"

    const-string v2, "CallRomania"

    .line 712
    const v3, 0x7f0200e2

    const/16 v4, 0xc

    .line 713
    const/4 v5, 0x7

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "ro_RO"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Locale;

    const-string v8, "es_ES"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 714
    const-class v8, Lcom/csipsimple/wizards/impl/CallRomania;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 711
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ANV"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "ANV"

    const-string v2, "ANV"

    .line 716
    const v3, 0x7f0200d6

    const/4 v4, 0x5

    .line 717
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "PT"

    const-string v12, "pt"

    invoke-direct {v7, v8, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 718
    const-class v8, Lcom/csipsimple/wizards/impl/Anv;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 715
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v10, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "INTERTELECOMGR"

    new-instance v0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    const-string v1, "INTERTELECOMGR"

    const-string v2, "Inter Telecom"

    .line 720
    const v3, 0x7f020100

    const/16 v4, 0x9

    .line 721
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/util/Locale;

    const/4 v6, 0x0

    const-string v7, "el_GR"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "ru_RU"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "bg_BG"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "el_CY"

    invoke-static {v7}, Lcom/csipsimple/wizards/WizardUtils;->locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 722
    const-class v8, Lcom/csipsimple/wizards/impl/InterTelecomGr;

    invoke-direct/range {v0 .. v8}, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 719
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .local v9, "info":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/csipsimple/wizards/WizardUtils;->initDone:Z

    .line 729
    return-void

    .line 725
    .end local v9    # "info":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    :cond_0
    invoke-static {}, Lcom/csipsimple/utils/CustomDistribution;->getCustomDistributionWizard()Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    move-result-object v9

    .line 726
    .restart local v9    # "info":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    sget-object v0, Lcom/csipsimple/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    iget-object v1, v9, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static locale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "isoCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "codes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 116
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-object v1

    .line 117
    :cond_0
    array-length v1, v0

    if-ne v1, v4, :cond_1

    .line 118
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "WizardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid locale "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static wizardInfoToMap(Lcom/csipsimple/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;
    .locals 3
    .param p0, "infos"    # Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    .param p1, "usePriorityInt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/csipsimple/wizards/WizardUtils$WizardInfo;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 733
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "LABEL"

    iget-object v2, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->label:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v1, "ID"

    iget-object v2, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string v1, "ICON"

    iget v2, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v1, "PRIORITY"

    iget v2, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v1, "PRIORITY_INT"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    return-object v0
.end method
