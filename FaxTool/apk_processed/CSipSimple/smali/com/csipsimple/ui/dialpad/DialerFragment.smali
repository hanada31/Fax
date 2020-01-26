.class public Lcom/csipsimple/ui/dialpad/DialerFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DialerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/csipsimple/widgets/Dialpad$OnDialKeyListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;
.implements Lcom/csipsimple/ui/SipHome$ViewPagerVisibilityListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;
    }
.end annotation


# static fields
.field protected static final PICKUP_PHONE:I = 0x0

.field private static final TAG_AUTOCOMPLETE_SIDE_FRAG:Ljava/lang/String; = "autocomplete_dial_side_frag"

.field private static final TEXT_MODE_KEY:Ljava/lang/String; = "text_mode"

.field private static final THIS_FILE:Ljava/lang/String; = "DialerFragment"


# instance fields
.field accountButtonChangeListener:Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

.field private accountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

.field private autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

.field private autoCompleteFragment:Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;

.field private autoCompleteList:Landroid/widget/ListView;

.field private autoCompleteListItemListener:Lcom/csipsimple/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;

.field private final buttonsToLongAttach:[I

.field private callBar:Lcom/csipsimple/widgets/DialerCallBar;

.field private connection:Landroid/content/ServiceConnection;

.field private dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

.field private dialPad:Lcom/csipsimple/widgets/Dialpad;

.field private dialerLayout:Lcom/csipsimple/ui/dialpad/DialerLayout;

.field private digitFormater:Landroid/telephony/PhoneNumberFormattingTextWatcher;

.field private digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

.field private isDigit:Z

.field private keyboardActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mDualPane:Z

.field private missingVoicemailDialog:Landroid/app/AlertDialog;

.field private prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

.field private service:Lcom/csipsimple/api/ISipService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 115
    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->buttonsToLongAttach:[I

    .line 121
    new-instance v0, Lcom/csipsimple/ui/dialpad/DialerFragment$1;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/dialpad/DialerFragment$1;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->connection:Landroid/content/ServiceConnection;

    .line 346
    new-instance v0, Lcom/csipsimple/ui/dialpad/DialerFragment$2;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/dialpad/DialerFragment$2;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->keyboardActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 357
    new-instance v0, Lcom/csipsimple/ui/dialpad/DialerFragment$3;

    invoke-direct {v0, p0}, Lcom/csipsimple/ui/dialpad/DialerFragment$3;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->accountButtonChangeListener:Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

    .line 90
    return-void

    .line 114
    nop

    :array_0
    .array-data 4
        0x7f06007a
        0x7f060070
    .end array-data
.end method

.method static synthetic access$0(Lcom/csipsimple/ui/dialpad/DialerFragment;Lcom/csipsimple/api/ISipService;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->service:Lcom/csipsimple/api/ISipService;

    return-void
.end method

.method static synthetic access$1(Lcom/csipsimple/ui/dialpad/DialerFragment;)Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/csipsimple/ui/dialpad/DialerFragment;)Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    return v0
.end method

.method static synthetic access$3(Lcom/csipsimple/ui/dialpad/DialerFragment;Lcom/csipsimple/utils/CallHandlerPlugin;)V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/dialpad/DialerFragment;->placePluginCall(Lcom/csipsimple/utils/CallHandlerPlugin;)V

    return-void
.end method

.method static synthetic access$4(Lcom/csipsimple/ui/dialpad/DialerFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private applyTheme(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/csipsimple/utils/Theme;

    move-result-object v1

    .line 244
    .local v1, "t":Lcom/csipsimple/utils/Theme;
    if-eqz v1, :cond_7

    .line 245
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialPad:Lcom/csipsimple/widgets/Dialpad;

    invoke-virtual {v2, v1}, Lcom/csipsimple/widgets/Dialpad;->applyTheme(Lcom/csipsimple/utils/Theme;)V

    .line 249
    const v2, 0x7f060080

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "subV":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 251
    const-string v2, "btn_dial_delete"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 252
    const-string v2, "btn_dial_delete_margin"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyLayoutMargin(Landroid/view/View;Ljava/lang/String;)V

    .line 253
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "subV":Landroid/view/View;
    const-string v2, "ic_dial_action_delete"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 257
    :cond_0
    const v2, 0x7f06007e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .restart local v0    # "subV":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 259
    const-string v2, "btn_dial_action"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 260
    const-string v2, "btn_dial_action_margin"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyLayoutMargin(Landroid/view/View;Ljava/lang/String;)V

    .line 261
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "subV":Landroid/view/View;
    const-string v2, "ic_dial_action_call"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 265
    :cond_1
    const v2, 0x7f06007c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .restart local v0    # "subV":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 267
    const-string v2, "btn_add_action"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 268
    const-string v2, "btn_dial_add_margin"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyLayoutMargin(Landroid/view/View;Ljava/lang/String;)V

    .line 272
    :cond_2
    const v2, 0x7f06007d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_3

    .line 274
    const-string v2, "btn_bar_divider"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 275
    const-string v2, "btn_dial_divider"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyLayoutSize(Landroid/view/View;Ljava/lang/String;)V

    .line 277
    :cond_3
    const v2, 0x7f06007f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_4

    .line 279
    const-string v2, "btn_bar_divider"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 280
    const-string v2, "btn_dial_divider"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyLayoutSize(Landroid/view/View;Ljava/lang/String;)V

    .line 284
    :cond_4
    const v2, 0x7f060081

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_5

    .line 286
    const-string v2, "dialpad_background"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 290
    :cond_5
    const v2, 0x7f060082

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_6

    .line 292
    const-string v2, "dialer_callbar_background"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 296
    :cond_6
    const v2, 0x7f06006d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_7

    .line 298
    const-string v2, "dialer_textfield_background"

    invoke-virtual {v1, v0, v2}, Lcom/csipsimple/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 304
    .end local v0    # "subV":Landroid/view/View;
    :cond_7
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->callBar:Lcom/csipsimple/widgets/DialerCallBar;

    if-eqz v2, :cond_8

    .line 305
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->callBar:Lcom/csipsimple/widgets/DialerCallBar;

    invoke-static {v2}, Lcom/csipsimple/utils/Theme;->fixRepeatableBackground(Landroid/view/View;)V

    .line 307
    :cond_8
    return-void
.end method

.method private attachButtonListener(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "longAttach"    # Z

    .prologue
    .line 369
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 370
    .local v0, "button":Landroid/widget/ImageButton;
    if-nez v0, :cond_0

    .line 371
    const-string v1, "DialerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not found button "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 374
    :cond_0
    if-eqz p3, :cond_1

    .line 375
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private hasAutocompleteList()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-nez v0, :cond_0

    .line 528
    const/4 v0, 0x1

    .line 530
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialerLayout:Lcom/csipsimple/ui/dialpad/DialerLayout;

    invoke-virtual {v0}, Lcom/csipsimple/ui/dialpad/DialerLayout;->canShowList()Z

    move-result v0

    goto :goto_0
.end method

.method private initButtons(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v3, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->buttonsToLongAttach:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 391
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 393
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 394
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setCursorVisible(Z)V

    .line 395
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/csipsimple/ui/dialpad/DialerFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 396
    return-void

    .line 387
    :cond_0
    aget v0, v3, v1

    .line 388
    .local v0, "buttonId":I
    const/4 v5, 0x1

    invoke-direct {p0, p1, v0, v5}, Lcom/csipsimple/ui/dialpad/DialerFragment;->attachButtonListener(Landroid/view/View;IZ)V

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 401
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 402
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p1, v0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 403
    return-void
.end method

.method private placeCallWithOption(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v9, -0x1

    .line 595
    iget-object v5, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->service:Lcom/csipsimple/api/ISipService;

    if-nez v5, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    const-string v4, ""

    .line 599
    .local v4, "toCall":Ljava/lang/String;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 601
    .local v1, "accountToUse":Ljava/lang/Long;
    iget-object v5, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-virtual {v5}, Lcom/csipsimple/widgets/AccountChooserButton;->getSelectedAccount()Lcom/csipsimple/api/SipProfile;

    move-result-object v0

    .line 602
    .local v0, "acc":Lcom/csipsimple/api/SipProfile;
    if-eqz v0, :cond_2

    .line 603
    iget-wide v5, v0, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 606
    :cond_2
    iget-boolean v5, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz v5, :cond_3

    .line 607
    iget-object v5, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v5}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 612
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 617
    iget-object v5, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v5}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->clear()V

    .line 620
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    .line 623
    :try_start_0
    iget-object v5, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->service:Lcom/csipsimple/api/ISipService;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-interface {v5, v4, v6, p1}, Lcom/csipsimple/api/ISipService;->makeCallWithOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v3

    .line 625
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "DialerFragment"

    const-string v6, "Service can\'t be called to make the call"

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v5, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v5}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 627
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-eqz v5, :cond_0

    .line 629
    new-instance v2, Lcom/csipsimple/utils/CallHandlerPlugin;

    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/csipsimple/utils/CallHandlerPlugin;-><init>(Landroid/content/Context;)V

    .line 630
    .local v2, "ch":Lcom/csipsimple/utils/CallHandlerPlugin;
    new-instance v5, Lcom/csipsimple/ui/dialpad/DialerFragment$5;

    invoke-direct {v5, p0}, Lcom/csipsimple/ui/dialpad/DialerFragment$5;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V

    invoke-virtual {v2, v1, v4, v5}, Lcom/csipsimple/utils/CallHandlerPlugin;->loadFrom(Ljava/lang/Long;Ljava/lang/String;Lcom/csipsimple/utils/CallHandlerPlugin$OnLoadListener;)V

    goto :goto_0
.end method

.method private placePluginCall(Lcom/csipsimple/utils/CallHandlerPlugin;)V
    .locals 4
    .param p1, "ch"    # Lcom/csipsimple/utils/CallHandlerPlugin;

    .prologue
    .line 754
    :try_start_0
    invoke-virtual {p1}, Lcom/csipsimple/utils/CallHandlerPlugin;->getNextExcludeTelNumber()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "nextExclude":Ljava/lang/String;
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->service:Lcom/csipsimple/api/ISipService;
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 757
    :try_start_1
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->service:Lcom/csipsimple/api/ISipService;

    invoke-interface {v2, v1}, Lcom/csipsimple/api/ISipService;->ignoreNextOutgoingCallFor(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 762
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/csipsimple/utils/CallHandlerPlugin;->getIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V

    .line 766
    .end local v1    # "nextExclude":Ljava/lang/String;
    :goto_1
    return-void

    .line 758
    .restart local v1    # "nextExclude":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DialerFragment"

    const-string v3, "Impossible to ignore next outgoing call"

    invoke-static {v2, v3, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 763
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "nextExclude":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 764
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "DialerFragment"

    const-string v3, "Pending intent cancelled"

    invoke-static {v2, v3, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x0

    .line 463
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 465
    .local v0, "notEmpty":Z
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->callBar:Lcom/csipsimple/widgets/DialerCallBar;

    invoke-virtual {v2, v0}, Lcom/csipsimple/widgets/DialerCallBar;->setEnabled(Z)V

    .line 467
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v2, v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setCursorVisible(Z)V

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->hasAutocompleteList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    .line 474
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v1}, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 480
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->mDualPane:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;

    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->filter(Ljava/lang/CharSequence;)V

    .line 483
    :cond_2
    return-void

    .end local v0    # "notEmpty":Z
    :cond_3
    move v0, v1

    .line 463
    goto :goto_0

    .line 476
    .restart local v0    # "notEmpty":Z
    :cond_4
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 555
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 776
    return-void
.end method

.method public deleteChar()V
    .locals 1

    .prologue
    .line 770
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->keyPressed(I)V

    .line 771
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 312
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.csipsimple.service.SipService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->connection:Landroid/content/ServiceConnection;

    .line 313
    const/4 v3, 0x1

    .line 312
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 315
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    if-nez v0, :cond_1

    .line 319
    new-instance v0, Lcom/csipsimple/utils/DialingFeedback;

    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/csipsimple/utils/DialingFeedback;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    invoke-virtual {v0}, Lcom/csipsimple/utils/DialingFeedback;->resume()V

    .line 324
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 438
    .local v0, "viewId":I
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setCursorVisible(Z)V

    .line 443
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->mDualPane:Z

    .line 162
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digitFormater:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    .line 164
    new-instance v0, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    .line 165
    new-instance v0, Lcom/csipsimple/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;

    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-direct {v0, p0, v1}, Lcom/csipsimple/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;)V

    iput-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteListItemListener:Lcom/csipsimple/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;

    .line 168
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesWrapper;->startIsDigit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->setHasOptionsMenu(Z)V

    .line 171
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 566
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 568
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 569
    .local v0, "action":I
    :goto_0
    iget-boolean v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0b0204

    :goto_1
    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 571
    .local v1, "delMenu":Lcom/actionbarsherlock/view/MenuItem;
    iget-boolean v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0200c0

    .line 570
    :goto_2
    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 572
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 573
    new-instance v2, Lcom/csipsimple/ui/dialpad/DialerFragment$4;

    invoke-direct {v2, p0}, Lcom/csipsimple/ui/dialpad/DialerFragment$4;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 580
    return-void

    .line 568
    .end local v0    # "action":I
    .end local v1    # "delMenu":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    .restart local v0    # "action":I
    :cond_1
    const v2, 0x7f0b0205

    goto :goto_1

    .line 572
    .restart local v1    # "delMenu":Lcom/actionbarsherlock/view/MenuItem;
    :cond_2
    const v2, 0x7f0200bf

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 176
    const v1, 0x7f03002a

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/ui/dialpad/DigitsEditText;

    iput-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    .line 187
    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/widgets/Dialpad;

    iput-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialPad:Lcom/csipsimple/widgets/Dialpad;

    .line 188
    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/widgets/DialerCallBar;

    iput-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->callBar:Lcom/csipsimple/widgets/DialerCallBar;

    .line 189
    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    .line 190
    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/widgets/AccountChooserButton;

    iput-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    .line 191
    const v1, 0x7f06006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/csipsimple/ui/dialpad/DialerLayout;

    iput-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialerLayout:Lcom/csipsimple/ui/dialpad/DialerLayout;

    .line 197
    if-eqz p3, :cond_0

    .line 198
    const-string v1, "text_mode"

    iget-boolean v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    iget-object v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->keyboardActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v4}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 204
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialerLayout:Lcom/csipsimple/ui/dialpad/DialerLayout;

    iget-boolean v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->mDualPane:Z

    invoke-virtual {v1, v4}, Lcom/csipsimple/ui/dialpad/DialerLayout;->setForceNoList(Z)V

    .line 207
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-virtual {v1, v3}, Lcom/csipsimple/widgets/AccountChooserButton;->setShowExternals(Z)V

    .line 208
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    iget-object v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->accountButtonChangeListener:Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;

    invoke-virtual {v1, v4}, Lcom/csipsimple/widgets/AccountChooserButton;->setOnAccountChangeListener(Lcom/csipsimple/widgets/AccountChooserButton$OnAccountChangeListener;)V

    .line 211
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialPad:Lcom/csipsimple/widgets/Dialpad;

    invoke-virtual {v1, p0}, Lcom/csipsimple/widgets/Dialpad;->setOnDialKeyListener(Lcom/csipsimple/widgets/Dialpad$OnDialKeyListener;)V

    .line 214
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/csipsimple/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteListItemListener:Lcom/csipsimple/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 218
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->callBar:Lcom/csipsimple/widgets/DialerCallBar;

    invoke-virtual {v1, p0}, Lcom/csipsimple/widgets/DialerCallBar;->setOnDialActionListener(Lcom/csipsimple/widgets/DialerCallBar$OnDialActionListener;)V

    .line 219
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->callBar:Lcom/csipsimple/widgets/DialerCallBar;

    iget-object v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    const-string v5, "use_video"

    invoke-virtual {v4, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/csipsimple/widgets/DialerCallBar;->setVideoEnabled(Z)V

    .line 224
    invoke-direct {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->initButtons(Landroid/view/View;)V

    .line 226
    iget-boolean v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/csipsimple/ui/dialpad/DialerFragment;->setTextDialing(ZZ)V

    .line 229
    invoke-direct {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->applyTheme(Landroid/view/View;)V

    .line 230
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 231
    return-object v0

    :cond_1
    move v1, v3

    .line 226
    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 329
    :try_start_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    invoke-virtual {v1}, Lcom/csipsimple/utils/DialingFeedback;->pause()V

    .line 335
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 336
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DialerFragment"

    const-string v2, "Unable to un bind"

    invoke-static {v1, v2, v0}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 812
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 814
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p2, v0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 448
    .local v0, "vId":I
    const v2, 0x7f06007a

    if-ne v0, v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    invoke-virtual {v2}, Lcom/csipsimple/utils/DialingFeedback;->hapticFeedback()V

    .line 450
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/csipsimple/ui/dialpad/DialerFragment;->keyPressed(I)V

    .line 458
    :goto_0
    return v1

    .line 452
    :cond_0
    const v2, 0x7f060070

    if-ne v0, v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->placeVMCall()V

    goto :goto_0

    .line 458
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 236
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 237
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->callBar:Lcom/csipsimple/widgets/DialerCallBar;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->callBar:Lcom/csipsimple/widgets/DialerCallBar;

    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/csipsimple/utils/PreferencesWrapper;

    const-string v2, "use_video"

    invoke-virtual {v1, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/widgets/DialerCallBar;->setVideoEnabled(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    const-string v0, "text_mode"

    iget-boolean v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 344
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 560
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/csipsimple/widgets/AccountChooserButton;->setChangeable(Z)V

    .line 561
    return-void
.end method

.method public onTrigger(II)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "dialTone"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialFeedback:Lcom/csipsimple/utils/DialingFeedback;

    invoke-virtual {v0, p2}, Lcom/csipsimple/utils/DialingFeedback;->giveFeedback(I)V

    .line 548
    invoke-direct {p0, p1}, Lcom/csipsimple/ui/dialpad/DialerFragment;->keyPressed(I)V

    .line 549
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 782
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 785
    new-instance v2, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;

    invoke-direct {v2}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;-><init>()V

    iput-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;

    .line 787
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    if-eqz v2, :cond_0

    .line 788
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 789
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "constraint"

    .line 790
    iget-object v3, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v3}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 789
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 792
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;

    invoke-virtual {v2, v0}, Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 801
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 802
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0600ea

    iget-object v3, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/csipsimple/ui/dialpad/DialerAutocompleteDetailsFragment;

    const-string v4, "autocomplete_dial_side_frag"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 803
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 804
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 808
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method public placeCall()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->placeCallWithOption(Landroid/os/Bundle;)V

    .line 585
    return-void
.end method

.method public placeVMCall()V
    .locals 18

    .prologue
    .line 641
    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 642
    .local v2, "accountToUse":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 643
    .local v1, "acc":Lcom/csipsimple/api/SipProfile;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/csipsimple/widgets/AccountChooserButton;

    invoke-virtual {v12}, Lcom/csipsimple/widgets/AccountChooserButton;->getSelectedAccount()Lcom/csipsimple/api/SipProfile;

    move-result-object v1

    .line 644
    if-eqz v1, :cond_0

    .line 645
    iget-wide v12, v1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 648
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_3

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    iget-wide v13, v1, Lcom/csipsimple/api/SipProfile;->id:J

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    .line 650
    const-string v17, "vm_nbr"

    aput-object v17, v15, v16

    .line 649
    invoke-static {v12, v13, v14, v15}, Lcom/csipsimple/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/csipsimple/api/SipProfile;

    move-result-object v10

    .line 652
    .local v10, "vmAcc":Lcom/csipsimple/api/SipProfile;
    iget-object v12, v10, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 655
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->service:Lcom/csipsimple/api/ISipService;

    iget-object v13, v10, Lcom/csipsimple/api/SipProfile;->vm_nbr:Ljava/lang/String;

    iget-wide v14, v1, Lcom/csipsimple/api/SipProfile;->id:J

    long-to-int v14, v14

    invoke-interface {v12, v13, v14}, Lcom/csipsimple/api/ISipService;->makeCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v10    # "vmAcc":Lcom/csipsimple/api/SipProfile;
    :cond_1
    :goto_0
    return-void

    .line 656
    .restart local v10    # "vmAcc":Lcom/csipsimple/api/SipProfile;
    :catch_0
    move-exception v3

    .line 657
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "DialerFragment"

    const-string v13, "Service can\'t be called to make the call"

    invoke-static {v12, v13}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-wide v4, v1, Lcom/csipsimple/api/SipProfile;->id:J

    .line 662
    .local v4, "editedAccId":J
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 663
    .local v6, "factory":Landroid/view/LayoutInflater;
    const v12, 0x7f03001d

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 665
    .local v8, "textEntryView":Landroid/view/View;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 666
    iget-object v13, v1, Lcom/csipsimple/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 667
    invoke-virtual {v12, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 668
    const v13, 0x7f0b01ef

    new-instance v14, Lcom/csipsimple/ui/dialpad/DialerFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4, v5}, Lcom/csipsimple/ui/dialpad/DialerFragment$6;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;J)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 692
    const v13, 0x7f0b01c8

    new-instance v14, Lcom/csipsimple/ui/dialpad/DialerFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment$7;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 700
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 665
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    .line 704
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 705
    const/4 v13, 0x2

    .line 704
    invoke-virtual {v12, v13}, Landroid/view/Window;->addFlags(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 709
    .end local v4    # "editedAccId":J
    .end local v6    # "factory":Landroid/view/LayoutInflater;
    .end local v8    # "textEntryView":Landroid/view/View;
    .end local v10    # "vmAcc":Lcom/csipsimple/api/SipProfile;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    .line 710
    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const-class v15, Lcom/csipsimple/plugins/telephony/CallHandler;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    .line 709
    invoke-static {v12, v13}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    if-ne v2, v12, :cond_1

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    .line 713
    const-string v13, "phone"

    .line 712
    invoke-virtual {v12, v13}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 714
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v11

    .line 716
    .local v11, "vmNumber":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 717
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->service:Lcom/csipsimple/api/ISipService;

    if-eqz v12, :cond_4

    .line 719
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->service:Lcom/csipsimple/api/ISipService;

    invoke-interface {v12, v11}, Lcom/csipsimple/api/ISipService;->ignoreNextOutgoingCallFor(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    :cond_4
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.CALL"

    const-string v13, "tel"

    const/4 v14, 0x0

    invoke-static {v13, v11, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 725
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 726
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/csipsimple/ui/dialpad/DialerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 720
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 721
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v12, "DialerFragment"

    const-string v13, "Not possible to ignore next"

    invoke-static {v12, v13}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 729
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 730
    const v13, 0x7f0b01df

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 731
    const v13, 0x7f0b0206

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 732
    const v13, 0x7f0b01ef

    new-instance v14, Lcom/csipsimple/ui/dialpad/DialerFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment$8;-><init>(Lcom/csipsimple/ui/dialpad/DialerFragment;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 739
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 729
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    .line 743
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 744
    const/4 v13, 0x2

    .line 743
    invoke-virtual {v12, v13}, Landroid/view/Window;->addFlags(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/csipsimple/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public placeVideoCall()V
    .locals 3

    .prologue
    .line 589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 590
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "opt_call_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    invoke-direct {p0, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->placeCallWithOption(Landroid/os/Bundle;)V

    .line 592
    return-void
.end method

.method public setTextDialing(Z)V
    .locals 3
    .param p1, "textMode"    # Z

    .prologue
    .line 491
    const-string v0, "DialerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Switch to mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->setTextDialing(ZZ)V

    .line 493
    return-void
.end method

.method public setTextDialing(ZZ)V
    .locals 5
    .param p1, "textMode"    # Z
    .param p2, "forceRefresh"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 502
    if-nez p2, :cond_1

    iget-boolean v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    if-ne v4, v0, :cond_1

    .line 524
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 502
    goto :goto_0

    .line 506
    :cond_1
    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    .line 507
    iget-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    iget-object v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digitFormater:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, v4}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 512
    :goto_3
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 513
    iget-object v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    iget-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setCursorVisible(Z)V

    .line 514
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    iget-boolean v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    invoke-virtual {v0, v4, v2}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setIsDigit(ZZ)V

    .line 517
    iget-object v2, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->dialPad:Lcom/csipsimple/widgets/Dialpad;

    iget-boolean v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->isDigit:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v2, v0}, Lcom/csipsimple/widgets/Dialpad;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->hasAutocompleteList()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 523
    invoke-virtual {p0}, Lcom/csipsimple/ui/dialpad/DialerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 506
    goto :goto_2

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    iget-object v4, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digitFormater:Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-virtual {v0, v4}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    :cond_4
    move v0, v2

    .line 513
    goto :goto_4

    :cond_5
    move v0, v3

    .line 517
    goto :goto_5

    :cond_6
    move v1, v3

    .line 518
    goto :goto_6
.end method

.method public setTextFieldValue(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 539
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v1, p0, Lcom/csipsimple/ui/dialpad/DialerFragment;->digits:Lcom/csipsimple/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/csipsimple/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 542
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 543
    return-void
.end method
