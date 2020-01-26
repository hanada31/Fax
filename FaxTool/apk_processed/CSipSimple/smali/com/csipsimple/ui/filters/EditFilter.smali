.class public Lcom/csipsimple/ui/filters/EditFilter;
.super Landroid/app/Activity;
.source "EditFilter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "EditFilter"


# instance fields
.field private accountId:J

.field private actionSpinner:Landroid/widget/Spinner;

.field private filter:Lcom/csipsimple/models/Filter;

.field private filterId:Ljava/lang/Long;

.field private initMatcherSpinner:Z

.field private initReplaceSpinner:Z

.field private matcherSpinner:Landroid/widget/Spinner;

.field private matchesTextEditor:Landroid/widget/EditText;

.field private replaceContainer:Landroid/view/View;

.field private replaceSpinner:Landroid/widget/Spinner;

.field private replaceTextEditor:Landroid/widget/EditText;

.field private saveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/filters/EditFilter;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/EditFilter;->saveFilter()V

    return-void
.end method

.method private checkFormValidity()V
    .locals 4

    .prologue
    .line 188
    const/4 v2, 0x1

    .line 189
    .local v2, "isValid":Z
    iget-object v3, p0, Lcom/csipsimple/ui/filters/EditFilter;->actionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/csipsimple/models/Filter;->getActionForPosition(Ljava/lang/Integer;)I

    move-result v0

    .line 191
    .local v0, "action":I
    iget-object v3, p0, Lcom/csipsimple/ui/filters/EditFilter;->matchesTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/EditFilter;->matcherNeedsText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const/4 v2, 0x0

    .line 195
    :cond_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/csipsimple/ui/filters/EditFilter;->saveButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fillLayout()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->actionSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    iget-object v2, v2, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/csipsimple/models/Filter;->getPositionForAction(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 176
    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    invoke-virtual {v1}, Lcom/csipsimple/models/Filter;->getRepresentationForMatcher()Lcom/csipsimple/models/Filter$RegExpRepresentation;

    move-result-object v0

    .line 178
    .local v0, "repr":Lcom/csipsimple/models/Filter$RegExpRepresentation;
    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->matcherSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/csipsimple/models/Filter;->getPositionForMatcher(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 179
    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->matchesTextEditor:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    invoke-virtual {v1}, Lcom/csipsimple/models/Filter;->getRepresentationForReplace()Lcom/csipsimple/models/Filter$RegExpRepresentation;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    invoke-static {v2}, Lcom/csipsimple/models/Filter;->getPositionForReplace(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 183
    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method private matcherNeedsText()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->matcherSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/models/Filter;->getMatcherForPosition(Ljava/lang/Integer;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->matcherSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/models/Filter;->getMatcherForPosition(Ljava/lang/Integer;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 245
    goto :goto_0
.end method

.method private saveFilter()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 135
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    iget-wide v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->accountId:J

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    .line 136
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->actionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/csipsimple/models/Filter;->getActionForPosition(Ljava/lang/Integer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    .line 137
    new-instance v7, Lcom/csipsimple/models/Filter$RegExpRepresentation;

    invoke-direct {v7}, Lcom/csipsimple/models/Filter$RegExpRepresentation;-><init>()V

    .line 139
    .local v7, "repr":Lcom/csipsimple/models/Filter$RegExpRepresentation;
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->matcherSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/models/Filter;->getMatcherForPosition(Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 140
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->matchesTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    invoke-virtual {v0, v7}, Lcom/csipsimple/models/Filter;->setMatcherRepresentation(Lcom/csipsimple/models/Filter$RegExpRepresentation;)V

    .line 145
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    iget-object v0, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/csipsimple/models/Filter$RegExpRepresentation;->fieldContent:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/models/Filter;->getReplaceForPosition(Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/csipsimple/models/Filter$RegExpRepresentation;->type:Ljava/lang/Integer;

    .line 148
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    invoke-virtual {v0, v7}, Lcom/csipsimple/models/Filter;->setReplaceRepresentation(Lcom/csipsimple/models/Filter$RegExpRepresentation;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filterId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/EditFilter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    .line 158
    const-string v3, "account=?"

    .line 159
    new-array v4, v4, [Ljava/lang/String;

    .line 160
    iget-object v8, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    iget-object v8, v8, Lcom/csipsimple/models/Filter;->account:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    .line 157
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, "currentCursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/models/Filter;->priority:Ljava/lang/Integer;

    .line 163
    if-eqz v6, :cond_0

    .line 164
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/models/Filter;->priority:Ljava/lang/Integer;

    .line 165
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/EditFilter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    invoke-virtual {v2}, Lcom/csipsimple/models/Filter;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 171
    .end local v6    # "currentCursor":Landroid/database/Cursor;
    :goto_1
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    iget-object v0, v0, Lcom/csipsimple/models/Filter;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    iget-object v1, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    const-string v1, ""

    iput-object v1, v0, Lcom/csipsimple/models/Filter;->replacePattern:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/EditFilter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipManager;->FILTER_ID_URI_BASE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->filterId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    invoke-virtual {v2}, Lcom/csipsimple/models/Filter;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 257
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 264
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/EditFilter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->filterId:Ljava/lang/Long;

    .line 71
    const-string v2, "account"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->accountId:J

    .line 73
    iget-wide v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->accountId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 74
    const-string v2, "EditFilter"

    const-string v3, "Invalid account"

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/csipsimple/ui/filters/EditFilter;->finish()V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->filterId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/csipsimple/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/csipsimple/models/Filter;->getFilterFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/csipsimple/models/Filter;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->filter:Lcom/csipsimple/models/Filter;

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v2, 0x7f030030

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->setContentView(I)V

    .line 86
    const v2, 0x7f060087

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->actionSpinner:Landroid/widget/Spinner;

    .line 87
    const v2, 0x7f060089

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->matcherSpinner:Landroid/widget/Spinner;

    .line 88
    const v2, 0x7f06008c

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceSpinner:Landroid/widget/Spinner;

    .line 90
    const v2, 0x7f06008d

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    .line 91
    const v2, 0x7f06008a

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->matchesTextEditor:Landroid/widget/EditText;

    .line 95
    const v2, 0x7f06008b

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceContainer:Landroid/view/View;

    .line 99
    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->actionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 100
    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->matcherSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 101
    iput-boolean v5, p0, Lcom/csipsimple/ui/filters/EditFilter;->initMatcherSpinner:Z

    .line 102
    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 103
    iput-boolean v5, p0, Lcom/csipsimple/ui/filters/EditFilter;->initReplaceSpinner:Z

    .line 104
    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->matchesTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    const v2, 0x7f060033

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    .local v0, "bt":Landroid/widget/Button;
    new-instance v2, Lcom/csipsimple/ui/filters/EditFilter$1;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/filters/EditFilter$1;-><init>(Lcom/csipsimple/ui/filters/EditFilter;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v2, 0x7f06008e

    invoke-virtual {p0, v2}, Lcom/csipsimple/ui/filters/EditFilter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->saveButton:Landroid/widget/Button;

    .line 119
    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->saveButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object v2, p0, Lcom/csipsimple/ui/filters/EditFilter;->saveButton:Landroid/widget/Button;

    new-instance v3, Lcom/csipsimple/ui/filters/EditFilter$2;

    invoke-direct {v3, p0}, Lcom/csipsimple/ui/filters/EditFilter$2;-><init>(Lcom/csipsimple/ui/filters/EditFilter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/EditFilter;->fillLayout()V

    .line 129
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/EditFilter;->checkFormValidity()V

    .line 130
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .local p1, "spinner":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 211
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    .line 212
    .local v1, "spinnerId":I
    const v4, 0x7f060087

    if-ne v1, v4, :cond_4

    .line 213
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->actionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/csipsimple/models/Filter;->getActionForPosition(Ljava/lang/Integer;)I

    move-result v0

    .line 214
    .local v0, "action":I
    if-eq v0, v6, :cond_0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    if-ne v0, v6, :cond_2

    .line 217
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 218
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 240
    .end local v0    # "action":I
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->matchesTextEditor:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/csipsimple/ui/filters/EditFilter;->matcherNeedsText()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 241
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/EditFilter;->checkFormValidity()V

    .line 242
    return-void

    .line 220
    .restart local v0    # "action":I
    :cond_2
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 221
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    const v5, 0x7f0b0026

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 226
    .end local v0    # "action":I
    :cond_4
    const v4, 0x7f060089

    if-ne v1, v4, :cond_6

    .line 227
    iget-boolean v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->initMatcherSpinner:Z

    if-eqz v4, :cond_5

    .line 228
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->matchesTextEditor:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :cond_5
    iput-boolean v5, p0, Lcom/csipsimple/ui/filters/EditFilter;->initMatcherSpinner:Z

    goto :goto_0

    .line 232
    :cond_6
    const v4, 0x7f06008c

    if-ne v1, v4, :cond_1

    .line 233
    iget-boolean v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->initReplaceSpinner:Z

    if-eqz v4, :cond_7

    .line 234
    iget-object v4, p0, Lcom/csipsimple/ui/filters/EditFilter;->replaceTextEditor:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_7
    iput-boolean v5, p0, Lcom/csipsimple/ui/filters/EditFilter;->initReplaceSpinner:Z

    goto :goto_0

    :cond_8
    move v2, v3

    .line 240
    goto :goto_1
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
    .line 251
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/EditFilter;->checkFormValidity()V

    .line 252
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/csipsimple/ui/filters/EditFilter;->checkFormValidity()V

    .line 271
    return-void
.end method
