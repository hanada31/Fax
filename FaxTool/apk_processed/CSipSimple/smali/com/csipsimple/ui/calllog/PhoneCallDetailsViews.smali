.class public final Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callTypeAndDate:Landroid/widget/TextView;

.field public final callTypeIcons:Lcom/csipsimple/ui/calllog/CallTypeIconsView;

.field public final callTypeView:Landroid/view/View;

.field public final nameView:Landroid/widget/TextView;

.field public final numberView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/csipsimple/ui/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "callTypeView"    # Landroid/view/View;
    .param p3, "callTypeIcons"    # Lcom/csipsimple/ui/calllog/CallTypeIconsView;
    .param p4, "callTypeAndDate"    # Landroid/widget/TextView;
    .param p5, "numberView"    # Landroid/widget/TextView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    .line 48
    iput-object p2, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->callTypeView:Landroid/view/View;

    .line 49
    iput-object p3, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/csipsimple/ui/calllog/CallTypeIconsView;

    .line 50
    iput-object p4, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->callTypeAndDate:Landroid/widget/TextView;

    .line 51
    iput-object p5, p0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;

    .line 71
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v3, Lcom/csipsimple/ui/calllog/CallTypeIconsView;

    invoke-direct {v3, p0}, Lcom/csipsimple/ui/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/csipsimple/ui/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 62
    new-instance v0, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;

    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    const v2, 0x7f060055

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 64
    const v3, 0x7f060056

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/csipsimple/ui/calllog/CallTypeIconsView;

    .line 65
    const v4, 0x7f060057

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    const v5, 0x7f060054

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/csipsimple/ui/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/csipsimple/ui/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method
