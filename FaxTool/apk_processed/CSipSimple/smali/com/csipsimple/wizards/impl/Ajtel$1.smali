.class Lcom/csipsimple/wizards/impl/Ajtel$1;
.super Ljava/util/TreeMap;
.source "Ajtel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/impl/Ajtel;
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
.field private static final serialVersionUID:J = -0x4bae7a95f084c199L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 47
    const-string v0, "sip.ajtel.net"

    const-string v1, "sip.ajtel.net"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ajtel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "mercurio.ajtel.net"

    const-string v1, "mercurio.ajtel.net"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ajtel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "vpbx2.ajtel.net"

    const-string v1, "vpbx2.ajtel.net"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ajtel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "serpiente.ajtel.net"

    const-string v1, "serpiente.ajtel.net"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ajtel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "andromeda.ajtel.net"

    const-string v1, "andromeda.ajtel.net"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ajtel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "escorpion.ajtel.net"

    const-string v1, "escorpion.ajtel.net"

    invoke-virtual {p0, v0, v1}, Lcom/csipsimple/wizards/impl/Ajtel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
