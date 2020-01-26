.class public Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;
.super Landroid/widget/Spinner;
.source "PresenceStatusSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;,
        Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/Spinner;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static final ACC_PROJECTION:[Ljava/lang/String;

.field private static final PRESENCES_ITEMS_LENGTH:I = 0x2

.field private static final THIS_FILE:Ljava/lang/String; = "PresenceStatusSpinner"


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private hasPresenceRegistration:Z

.field private isValid:Z

.field private mAdapter:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private profileId:J

.field private service:Lcom/csipsimple/api/ISipService;

.field private statusObserver:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 211
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 212
    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 213
    const-string v2, "acc_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 214
    const-string v2, "reg_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 215
    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 216
    const-string v2, "transport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 217
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 218
    const-string v2, "wizard"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 219
    const-string v2, "publish_enabled"

    aput-object v2, v0, v1

    .line 211
    sput-object v0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->ACC_PROJECTION:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->profileId:J

    .line 60
    iput-boolean v3, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->hasPresenceRegistration:Z

    .line 61
    iput-boolean v3, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->isValid:Z

    .line 249
    new-instance v4, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$1;

    invoke-direct {v4, p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$1;-><init>(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;)V

    iput-object v4, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->connection:Landroid/content/ServiceConnection;

    .line 262
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->mHandler:Landroid/os/Handler;

    .line 263
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->statusObserver:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "fromRes":[Ljava/lang/String;
    array-length v4, v0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 79
    .end local v0    # "fromRes":[Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;-><init>(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->mAdapter:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;

    .line 80
    iget-object v3, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->mAdapter:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;->setDropDownViewResource(I)V

    .line 81
    iget-object v3, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->mAdapter:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$PresencesAdapter;

    invoke-virtual {p0, v3}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 82
    invoke-direct {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->updateRegistration()V

    .line 84
    invoke-virtual {p0, p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 85
    return-void

    .line 74
    .restart local v0    # "fromRes":[Ljava/lang/String;
    :cond_1
    aget-object v2, v0, v3

    .line 75
    .local v2, "str":Ljava/lang/CharSequence;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;Lcom/csipsimple/api/ISipService;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->service:Lcom/csipsimple/api/ISipService;

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->hasPresenceRegistration:Z

    return v0
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->updateRegistration()V

    return-void
.end method

.method private getSelectedPresence()Lcom/csipsimple/api/SipManager$PresenceStatus;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    sget-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->ONLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    sget-object v0, Lcom/csipsimple/api/SipManager$PresenceStatus;->OFFLINE:Lcom/csipsimple/api/SipManager$PresenceStatus;

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRegistration()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    iget-wide v4, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->profileId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 244
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->profileId:J

    sget-object v7, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->ACC_PROJECTION:[Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/csipsimple/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 231
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    iput-boolean v3, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->isValid:Z

    .line 232
    iput-boolean v3, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->hasPresenceRegistration:Z

    .line 233
    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, v0, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v4, v5, v6}, Lcom/csipsimple/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v1

    .line 236
    .local v1, "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    iget-boolean v4, v1, Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    if-eqz v4, :cond_1

    .line 237
    iput-boolean v2, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->isValid:Z

    .line 239
    :cond_1
    iget v4, v0, Lcom/csipsimple/api/SipProfile;->publish_enabled:I

    if-ne v4, v2, :cond_3

    :goto_1
    iput-boolean v2, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->hasPresenceRegistration:Z

    .line 242
    .end local v1    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :cond_2
    iget-boolean v2, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->isValid:Z

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->setEnabled(Z)V

    .line 243
    iget-boolean v2, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->hasPresenceRegistration:Z

    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->setVisibility(I)V

    goto :goto_0

    .restart local v1    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :cond_3
    move v2, v3

    .line 239
    goto :goto_1

    .line 243
    .end local v1    # "accountStatusDisplay":Lcom/csipsimple/utils/AccountListUtils$AccountStatusDisplay;
    :cond_4
    const/16 v3, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 266
    invoke-super {p0}, Landroid/widget/Spinner;->onAttachedToWindow()V

    .line 267
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/csipsimple/service/SipService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 268
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->statusObserver:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;

    iget-object v1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;-><init>(Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->statusObserver:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;

    .line 270
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    .line 271
    iget-object v2, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->statusObserver:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;

    .line 270
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->updateRegistration()V

    .line 274
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->statusObserver:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->statusObserver:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    iput-object v2, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->statusObserver:Lcom/csipsimple/ui/favorites/PresenceStatusSpinner$AccountStatusContentObserver;

    .line 288
    :cond_0
    iput-object v2, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->service:Lcom/csipsimple/api/ISipService;

    .line 289
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-wide v1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->profileId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 152
    iget-boolean v1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->hasPresenceRegistration:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->isValid:Z

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->service:Lcom/csipsimple/api/ISipService;

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->service:Lcom/csipsimple/api/ISipService;

    invoke-direct {p0}, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->getSelectedPresence()Lcom/csipsimple/api/SipManager$PresenceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/csipsimple/api/SipManager$PresenceStatus;->ordinal()I

    move-result v2

    const-string v3, "Test"

    iget-wide v4, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->profileId:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/csipsimple/api/ISipService;->setPresence(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PresenceStatusSpinner"

    const-string v2, "Error while trying to set presence through service"

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setProfileId(J)V
    .locals 0
    .param p1, "accId"    # J

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/csipsimple/ui/favorites/PresenceStatusSpinner;->profileId:J

    .line 172
    return-void
.end method
