.class Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "Codecs.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/prefs/Codecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsAdapter"
.end annotation


# instance fields
.field private final mActionBar:Lcom/actionbarsherlock/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mNextPosition:I

.field private final mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field final synthetic this$0:Lcom/csipsimple/ui/prefs/Codecs;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/prefs/Codecs;Landroid/support/v4/app/FragmentActivity;Lcom/actionbarsherlock/app/ActionBar;Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "actionBar"    # Lcom/actionbarsherlock/app/ActionBar;
    .param p4, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v1, -0x1

    .line 104
    iput-object p1, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->this$0:Lcom/csipsimple/ui/prefs/Codecs;

    .line 105
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mTabs:Ljava/util/List;

    .line 97
    iput v1, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mCurrentPosition:I

    .line 102
    iput v1, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mNextPosition:I

    .line 106
    iput-object p2, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mContext:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 108
    iput-object p4, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 109
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;)V
    .locals 2
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/actionbarsherlock/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mTabs:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 117
    invoke-virtual {p0}, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->this$0:Lcom/csipsimple/ui/prefs/Codecs;

    invoke-static {v1}, Lcom/csipsimple/ui/prefs/Codecs;->access$0(Lcom/csipsimple/ui/prefs/Codecs;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const-string v4, "band_type"

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    const-string v1, "wb"

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v4, "media_type"

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    :goto_2
    iget-object v2, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1

    .line 125
    :cond_0
    const-string v1, "nb"

    goto :goto_0

    :cond_1
    move v1, v3

    .line 126
    goto :goto_1

    .line 128
    :cond_2
    const-string v1, "band_type"

    const-string v4, "wb"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "media_type"

    if-ge p1, v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 178
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->this$0:Lcom/csipsimple/ui/prefs/Codecs;

    invoke-virtual {v0}, Lcom/csipsimple/ui/prefs/Codecs;->invalidateOptionsMenu()V

    .line 182
    iget v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mNextPosition:I

    iput v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mCurrentPosition:I

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 168
    iget v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_0

    .line 169
    const-string v0, "Codecs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Previous position and next position became same ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    iput p1, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mNextPosition:I

    .line 174
    return-void
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 145
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/csipsimple/ui/prefs/Codecs$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 152
    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 157
    return-void
.end method
