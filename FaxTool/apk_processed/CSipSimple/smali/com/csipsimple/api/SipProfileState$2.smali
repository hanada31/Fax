.class Lcom/csipsimple/api/SipProfileState$2;
.super Ljava/lang/Object;
.source "SipProfileState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/api/SipProfileState;
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
        "Lcom/csipsimple/api/SipProfileState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/csipsimple/api/SipProfileState;Lcom/csipsimple/api/SipProfileState;)I
    .locals 3
    .param p1, "infos1"    # Lcom/csipsimple/api/SipProfileState;
    .param p2, "infos2"    # Lcom/csipsimple/api/SipProfileState;

    .prologue
    .line 530
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 532
    invoke-virtual {p1}, Lcom/csipsimple/api/SipProfileState;->getPriority()I

    move-result v0

    .line 533
    .local v0, "c1":I
    invoke-virtual {p2}, Lcom/csipsimple/api/SipProfileState;->getPriority()I

    move-result v1

    .line 535
    .local v1, "c2":I
    if-le v0, v1, :cond_0

    .line 536
    const/4 v2, 0x1

    .line 543
    .end local v0    # "c1":I
    .end local v1    # "c2":I
    :goto_0
    return v2

    .line 538
    .restart local v0    # "c1":I
    .restart local v1    # "c2":I
    :cond_0
    if-ge v0, v1, :cond_1

    .line 539
    const/4 v2, -0x1

    goto :goto_0

    .line 543
    .end local v0    # "c1":I
    .end local v1    # "c2":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/csipsimple/api/SipProfileState;

    check-cast p2, Lcom/csipsimple/api/SipProfileState;

    invoke-virtual {p0, p1, p2}, Lcom/csipsimple/api/SipProfileState$2;->compare(Lcom/csipsimple/api/SipProfileState;Lcom/csipsimple/api/SipProfileState;)I

    move-result v0

    return v0
.end method
