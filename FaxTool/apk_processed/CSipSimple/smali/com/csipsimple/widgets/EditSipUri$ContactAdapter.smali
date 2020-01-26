.class Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "EditSipUri.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csipsimple/widgets/EditSipUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactAdapter"
.end annotation


# instance fields
.field private alphaIndexer:Landroid/widget/AlphabetIndexer;

.field final synthetic this$0:Lcom/csipsimple/widgets/EditSipUri;


# direct methods
.method public constructor <init>(Lcom/csipsimple/widgets/EditSipUri;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 110
    iput-object p1, p0, Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;->this$0:Lcom/csipsimple/widgets/EditSipUri;

    .line 111
    const v2, 0x7f030028

    new-array v4, v0, [Ljava/lang/String;

    new-array v5, v0, [I

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 112
    new-instance v0, Landroid/widget/AlphabetIndexer;

    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p3}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getContactIndexableColumnIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 114
    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p3, v1, v2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 112
    iput-object v0, p0, Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    .line 115
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 120
    invoke-static {}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->getInstance()Lcom/csipsimple/utils/contacts/ContactsWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/csipsimple/utils/contacts/ContactsWrapper;->bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 121
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/csipsimple/widgets/EditSipUri$ContactAdapter;->alphaIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
