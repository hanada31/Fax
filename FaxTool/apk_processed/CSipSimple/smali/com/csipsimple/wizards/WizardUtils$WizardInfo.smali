.class public Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
.super Ljava/lang/Object;
.source "WizardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/wizards/WizardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WizardInfo"
.end annotation


# instance fields
.field public classObject:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public countries:[Ljava/util/Locale;

.field public icon:I

.field public id:Ljava/lang/String;

.field public isGeneric:Z

.field public isWorld:Z

.field public label:Ljava/lang/String;

.field public priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V
    .locals 2
    .param p1, "aId"    # Ljava/lang/String;
    .param p2, "aLabel"    # Ljava/lang/String;
    .param p3, "aIcon"    # I
    .param p4, "aPriority"    # I
    .param p5, "aCountries"    # [Ljava/util/Locale;
    .param p6, "aIsGeneric"    # Z
    .param p7, "aIsWorld"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[",
            "Ljava/util/Locale;",
            "ZZ",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p8, "aClassObject":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x63

    iput v0, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->priority:I

    .line 55
    iput-boolean v1, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->isGeneric:Z

    .line 56
    iput-boolean v1, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->isWorld:Z

    .line 60
    iput-object p1, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->label:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->icon:I

    .line 63
    iput p4, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->priority:I

    .line 64
    iput-object p5, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->countries:[Ljava/util/Locale;

    .line 65
    iput-boolean p6, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->isGeneric:Z

    .line 66
    iput-boolean p7, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->isWorld:Z

    .line 67
    iput-object p8, p0, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->classObject:Ljava/lang/Class;

    .line 68
    return-void
.end method
