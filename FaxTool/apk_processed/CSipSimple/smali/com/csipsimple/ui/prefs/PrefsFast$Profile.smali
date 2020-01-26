.class final enum Lcom/csipsimple/ui/prefs/PrefsFast$Profile;
.super Ljava/lang/Enum;
.source "PrefsFast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/prefs/PrefsFast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/csipsimple/ui/prefs/PrefsFast$Profile;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

.field private static final synthetic ENUM$VALUES:[Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

.field public static final enum NEVER:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

.field public static final enum UNKOWN:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

.field public static final enum WIFI:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    const-string v1, "UNKOWN"

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->UNKOWN:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    .line 47
    new-instance v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    .line 48
    new-instance v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->WIFI:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    .line 49
    new-instance v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v5}, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->NEVER:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    sget-object v1, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->UNKOWN:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->ALWAYS:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->WIFI:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->NEVER:Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    aput-object v1, v0, v5

    sput-object v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->ENUM$VALUES:[Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/csipsimple/ui/prefs/PrefsFast$Profile;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    return-object v0
.end method

.method public static values()[Lcom/csipsimple/ui/prefs/PrefsFast$Profile;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/csipsimple/ui/prefs/PrefsFast$Profile;->ENUM$VALUES:[Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    array-length v1, v0

    new-array v2, v1, [Lcom/csipsimple/ui/prefs/PrefsFast$Profile;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
