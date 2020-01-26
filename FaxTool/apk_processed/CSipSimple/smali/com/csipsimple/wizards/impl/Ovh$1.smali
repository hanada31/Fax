.class Lcom/csipsimple/wizards/impl/Ovh$1;
.super Ljava/util/TreeMap;
.source "Ovh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Ovh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x14fa51bfddf9c70dL


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 46
    const-string v0, "sip.ovh.fr"

    const-string v1, "sip.ovh.fr"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ovh$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "sip.ovh.co.uk"

    const-string v1, "sip.ovh.co.uk"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ovh$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "sip.ovh.de"

    const-string v1, "sip.ovh.de"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ovh$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "sip.ovh.be"

    const-string v1, "sip.ovh.be"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ovh$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "sip.ovh.es"

    const-string v1, "sip.ovh.es"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ovh$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "sip.ovh.net"

    const-string v1, "sip.ovh.net"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ovh$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
