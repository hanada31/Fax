.class public Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "DialerAutocompleteDetailsFragment.java"


# static fields
.field public static final EXTRA_FILTER_CONSTRAINT:Ljava/lang/String; = "constraint"


# instance fields
.field private autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

.field private constraint:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->constraint:Ljava/lang/CharSequence;

    .line 34
    return-void
.end method

.method private proposeRestoreFromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    const-string v0, "constraint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "constraint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->filter(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v0}, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 94
    iput-object p1, p0, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->constraint:Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    .line 42
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/app/SherlockListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 71
    iget-object v3, p0, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v3, p3}, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "selectedItem":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 77
    .local v2, "superAct":Landroid/app/Activity;
    instance-of v3, v2, Lcom/csipsimple/ui/SipHome;

    if-eqz v3, :cond_0

    .line 78
    check-cast v2, Lcom/csipsimple/ui/SipHome;

    .end local v2    # "superAct":Landroid/app/Activity;
    invoke-virtual {v2}, Lcom/csipsimple/ui/SipHome;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 79
    .local v0, "frag":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;

    if-eqz v3, :cond_0

    .line 80
    check-cast v0, Lcom/csipsimple/ui/dialpad/DialerFragment;

    .end local v0    # "frag":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v3}, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v3

    .line 81
    invoke-virtual {v3, v1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v3}, Lcom/csipsimple/ui/dialpad/DialerFragment;->setTextFieldValue(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const-string v0, "constraint"

    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 64
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    invoke-direct {p0, p2}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->proposeRestoreFromBundle(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->proposeRestoreFromBundle(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method
