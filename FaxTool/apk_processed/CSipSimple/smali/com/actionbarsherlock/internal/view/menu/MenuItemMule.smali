.class public Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;
.super Ljava/lang/Object;
.source "MenuItemMule.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final ERROR:Ljava/lang/String; = "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."


# instance fields
.field private final mItem:Lcom/actionbarsherlock/view/MenuItem;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 24
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlphabeticShortcut()C
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemId()I
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumericShortcut()C
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/view/ActionProvider;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # C

    .prologue
    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # C

    .prologue
    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # C
    .param p2, "arg1"    # C

    .prologue
    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap()Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method
