.class Lcom/csipsimple/ui/SipHome$TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SipHome.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/ui/SipHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsAdapter"
.end annotation


# instance fields
.field private hasClearedDetails:Z

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

.field private final mTabsId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;

.field final synthetic this$0:Lcom/csipsimple/ui/SipHome;


# direct methods
.method public constructor <init>(Lcom/csipsimple/ui/SipHome;Landroid/support/v4/app/FragmentActivity;Lcom/actionbarsherlock/app/ActionBar;Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "actionBar"    # Lcom/actionbarsherlock/app/ActionBar;
    .param p4, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v1, -0x1

    .line 244
    iput-object p1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->this$0:Lcom/csipsimple/ui/SipHome;

    .line 245
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabs:Ljava/util/List;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabsId:Ljava/util/List;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->hasClearedDetails:Z

    .line 237
    iput v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mCurrentPosition:I

    .line 242
    iput v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mNextPosition:I

    .line 246
    iput-object p2, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mContext:Landroid/content/Context;

    .line 247
    iput-object p3, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 248
    iput-object p4, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 249
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 250
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 251
    return-void
.end method

.method private clearDetails()V
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-static {v1}, Lcom/csipsimple/ui/SipHome;->access$2(Lcom/csipsimple/ui/SipHome;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->hasClearedDetails:Z

    if-nez v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-virtual {v1}, Lcom/csipsimple/ui/SipHome;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 363
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0600ea

    new-instance v2, Landroid/support/v4/app/Fragment;

    invoke-direct {v2}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 364
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 365
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 367
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;I)V
    .locals 2
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p3, "tabId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/actionbarsherlock/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabs:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabsId:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 257
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->notifyDataSetChanged()V

    .line 258
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIdForPosition(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 268
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabsId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabsId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 289
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPositionForId(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 275
    iget-object v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabsId:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 276
    .local v0, "fPos":I
    if-ltz v0, :cond_0

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 279
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    packed-switch p1, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 336
    :pswitch_0
    iget v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mCurrentPosition:I

    if-ltz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->this$0:Lcom/csipsimple/ui/SipHome;

    iget v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mCurrentPosition:I

    invoke-static {v0, v1, v2}, Lcom/csipsimple/ui/SipHome;->access$1(Lcom/csipsimple/ui/SipHome;IZ)V

    .line 339
    :cond_0
    iget v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mNextPosition:I

    if-ltz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->this$0:Lcom/csipsimple/ui/SipHome;

    iget v1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mNextPosition:I

    invoke-static {v0, v1, v3}, Lcom/csipsimple/ui/SipHome;->access$1(Lcom/csipsimple/ui/SipHome;IZ)V

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->this$0:Lcom/csipsimple/ui/SipHome;

    invoke-virtual {v0}, Lcom/csipsimple/ui/SipHome;->invalidateOptionsMenu()V

    .line 344
    iget v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mNextPosition:I

    iput v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mCurrentPosition:I

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-direct {p0}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->clearDetails()V

    .line 349
    iput-boolean v3, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->hasClearedDetails:Z

    goto :goto_0

    .line 352
    :pswitch_2
    iput-boolean v2, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->hasClearedDetails:Z

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 325
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 304
    iget v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_0

    .line 305
    const-string v0, "SIP_HOME"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Previous position and next position became same ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    iput p1, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mNextPosition:I

    .line 310
    return-void
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 315
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->clearDetails()V

    .line 295
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 298
    :cond_0
    return-void
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 320
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mTabsId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/csipsimple/ui/SipHome$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->removeTabAt(I)V

    .line 264
    invoke-virtual {p0}, Lcom/csipsimple/ui/SipHome$TabsAdapter;->notifyDataSetChanged()V

    .line 265
    return-void
.end method
