.class public Lcom/csipsimple/ui/prefs/Codecs;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "Codecs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;
    }
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "Codecs"


# instance fields
.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private showVideoCodecs:Z

.field private useCodecsPerSpeed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/csipsimple/ui/prefs/Codecs;->useCodecsPerSpeed:Z

    .line 48
    iput-boolean v0, p0, Lcom/csipsimple/ui/prefs/Codecs;->showVideoCodecs:Z

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/prefs/Codecs;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/csipsimple/ui/prefs/Codecs;->useCodecsPerSpeed:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0b0166

    const v12, 0x7f0b0165

    const/4 v11, 0x1

    const v10, 0x7f0200c7

    const v9, 0x7f0200c6

    .line 52
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v8, 0x7f030026

    invoke-virtual {p0, v8}, Lcom/csipsimple/ui/prefs/Codecs;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/Codecs;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 59
    invoke-virtual {v0, v11}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 60
    invoke-virtual {v0, v11}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 62
    const v8, 0x7f06005d

    invoke-virtual {p0, v8}, Lcom/csipsimple/ui/prefs/Codecs;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/csipsimple/ui/prefs/Codecs;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 63
    new-instance v4, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;

    iget-object v8, p0, Lcom/csipsimple/ui/prefs/Codecs;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v4, p0, p0, v0, v8}, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;-><init>(Lcom/csipsimple/ui/prefs/Codecs;Landroid/support/v4/app/FragmentActivity;Lcom/actionbarsherlock/app/ActionBar;Landroid/support/v4/view/ViewPager;)V

    .line 64
    .local v4, "tabAdapter":Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;
    const-string v8, "codecs_per_bandwidth"

    invoke-static {p0, v8}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/csipsimple/ui/prefs/Codecs;->useCodecsPerSpeed:Z

    .line 65
    const-string v8, "use_video"

    invoke-static {p0, v8}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/csipsimple/ui/prefs/Codecs;->showVideoCodecs:Z

    .line 66
    iget-boolean v8, p0, Lcom/csipsimple/ui/prefs/Codecs;->useCodecsPerSpeed:Z

    if-eqz v8, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 68
    .local v1, "audioNb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v3

    .line 69
    .local v3, "audioWb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const-class v8, Lcom/csipsimple/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v3, v8}, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 70
    const-class v8, Lcom/csipsimple/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v1, v8}, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 71
    iget-boolean v8, p0, Lcom/csipsimple/ui/prefs/Codecs;->showVideoCodecs:Z

    if-eqz v8, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v5

    .line 73
    .local v5, "videoNb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v7

    .line 75
    .local v7, "videoWb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const-class v8, Lcom/csipsimple/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v7, v8}, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 76
    const-class v8, Lcom/csipsimple/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v5, v8}, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 87
    .end local v1    # "audioNb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    .end local v3    # "audioWb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    .end local v5    # "videoNb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    .end local v7    # "videoWb":Lcom/actionbarsherlock/app/ActionBar$Tab;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 80
    .local v2, "audioTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const-class v8, Lcom/csipsimple/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v2, v8}, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    .line 82
    iget-boolean v8, p0, Lcom/csipsimple/ui/prefs/Codecs;->showVideoCodecs:Z

    if-eqz v8, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v6

    .line 84
    .local v6, "videoTab":Lcom/actionbarsherlock/app/ActionBar$Tab;
    const-class v8, Lcom/csipsimple/ui/prefs/CodecsFragment;

    invoke-virtual {v4, v6, v8}, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V

    goto :goto_0
.end method
