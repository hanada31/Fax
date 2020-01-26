.class Lcom/csipsimple/ui/prefs/CodecsFragment$1;
.super Ljava/lang/Object;
.source "CodecsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/prefs/CodecsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# instance fields
.field final synthetic this$0:Lcom/csipsimple/ui/prefs/CodecsFragment;


# direct methods
.method constructor <init>(Lcom/csipsimple/ui/prefs/CodecsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/CodecsFragment$1;->this$0:Lcom/csipsimple/ui/prefs/CodecsFragment;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/csipsimple/ui/prefs/CodecsFragment$1;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3
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
    .line 351
    .local p1, "infos1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "infos2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 352
    const-string v2, "codec_priority"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 353
    .local v0, "c1":S
    const-string v2, "codec_priority"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 354
    .local v1, "c2":S
    if-le v0, v1, :cond_0

    .line 355
    const/4 v2, -0x1

    .line 362
    .end local v0    # "c1":S
    .end local v1    # "c2":S
    :goto_0
    return v2

    .line 357
    .restart local v0    # "c1":S
    .restart local v1    # "c2":S
    :cond_0
    if-ge v0, v1, :cond_1

    .line 358
    const/4 v2, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "c1":S
    .end local v1    # "c2":S
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
