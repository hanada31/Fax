.class public Lcom/csipsimple/widgets/RegistrationNotification;
.super Landroid/widget/RemoteViews;
.source "RegistrationNotification.java"


# static fields
.field private static final cells:[Ljava/lang/Integer;

.field private static final icons:[Ljava/lang/Integer;

.field private static final texts:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v5, [Ljava/lang/Integer;

    .line 40
    const v1, 0x7f0600d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 41
    const v1, 0x7f0600d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 42
    const v1, 0x7f0600db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 39
    sput-object v0, Lcom/csipsimple/widgets/RegistrationNotification;->cells:[Ljava/lang/Integer;

    .line 45
    new-array v0, v5, [Ljava/lang/Integer;

    .line 46
    const v1, 0x7f0600d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 47
    const v1, 0x7f0600d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 48
    const v1, 0x7f0600dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 45
    sput-object v0, Lcom/csipsimple/widgets/RegistrationNotification;->icons:[Ljava/lang/Integer;

    .line 51
    new-array v0, v5, [Ljava/lang/Integer;

    .line 52
    const v1, 0x7f0600d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 53
    const v1, 0x7f0600da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 54
    const v1, 0x7f0600de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 51
    sput-object v0, Lcom/csipsimple/widgets/RegistrationNotification;->texts:[Ljava/lang/Integer;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/widgets/RegistrationNotification;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/widgets/RegistrationNotification;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/widgets/RegistrationNotification;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 58
    const v0, 0x7f030045

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public addAccountInfos(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/csipsimple/api/SipProfileState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "activeAccountsInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/csipsimple/api/SipProfileState;>;"
    const/4 v2, 0x0

    .line 91
    .local v2, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 110
    return-void

    .line 91
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/csipsimple/api/SipProfileState;

    .line 93
    .local v0, "accountInfo":Lcom/csipsimple/api/SipProfileState;
    sget-object v5, Lcom/csipsimple/widgets/RegistrationNotification;->cells:[Ljava/lang/Integer;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 94
    sget-object v5, Lcom/csipsimple/widgets/RegistrationNotification;->cells:[Ljava/lang/Integer;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/csipsimple/widgets/RegistrationNotification;->setViewVisibility(II)V

    .line 95
    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfileState;->getWizard()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/csipsimple/wizards/WizardUtils;->getWizardClass(Ljava/lang/String;)Lcom/csipsimple/wizards/WizardUtils$WizardInfo;

    move-result-object v3

    .line 96
    .local v3, "wizardInfos":Lcom/csipsimple/wizards/WizardUtils$WizardInfo;
    if-eqz v3, :cond_2

    .line 97
    invoke-virtual {v0}, Lcom/csipsimple/api/SipProfileState;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    .local v1, "dName":Ljava/lang/CharSequence;
    sget-object v5, Lcom/csipsimple/widgets/RegistrationNotification;->icons:[Ljava/lang/Integer;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v3, Lcom/csipsimple/wizards/WizardUtils$WizardInfo;->icon:I

    invoke-virtual {p0, v5, v6}, Lcom/csipsimple/widgets/RegistrationNotification;->setImageViewResource(II)V

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 101
    sget-object v5, Lcom/csipsimple/widgets/RegistrationNotification;->texts:[Ljava/lang/Integer;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v1}, Lcom/csipsimple/widgets/RegistrationNotification;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 106
    .end local v1    # "dName":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public clearRegistrations()V
    .locals 6

    .prologue
    .line 77
    sget-object v2, Lcom/csipsimple/widgets/RegistrationNotification;->cells:[Ljava/lang/Integer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 80
    return-void

    .line 77
    :cond_0
    aget-object v0, v2, v1

    .line 78
    .local v0, "cellId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/csipsimple/widgets/RegistrationNotification;->setViewVisibility(II)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setTextsColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 119
    :cond_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/csipsimple/widgets/RegistrationNotification;->texts:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 117
    sget-object v1, Lcom/csipsimple/widgets/RegistrationNotification;->texts:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/csipsimple/widgets/RegistrationNotification;->setTextColor(II)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
