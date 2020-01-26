.class public Lcom/csipsimple/widgets/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final ANDROID_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final THIS_FILE:Ljava/lang/String; = "SeekBarPrefs"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultValue:F

.field private final dialogMessage:Ljava/lang/String;

.field private final max:F

.field private seekBar:Landroid/widget/SeekBar;

.field private final suffix:Ljava/lang/String;

.field private value:F

.field private valueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v2, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    .line 54
    iput-object p1, p0, Lcom/csipsimple/widgets/SeekBarPreference;->context:Landroid/content/Context;

    .line 56
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "dialogMessage"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->dialogMessage:Ljava/lang/String;

    .line 57
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    .line 58
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->defaultValue:F

    .line 59
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "max"

    const/16 v2, 0xa

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->max:F

    .line 61
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 98
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/csipsimple/widgets/SeekBarPreference;->max:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 100
    iget-object v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x6

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 70
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, "splashText":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->dialogMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->dialogMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/csipsimple/widgets/SeekBarPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    .line 77
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v3, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/csipsimple/widgets/SeekBarPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    .line 83
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 84
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SeekBarPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->defaultValue:F

    invoke-virtual {p0, v3}, Lcom/csipsimple/widgets/SeekBarPreference;->getPersistedFloat(F)F

    move-result v3

    iput v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/csipsimple/widgets/SeekBarPreference;->max:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 91
    iget-object v3, p0, Lcom/csipsimple/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 93
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 116
    const-string v0, "SeekBarPrefs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dialog is closing..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " et "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/csipsimple/widgets/SeekBarPreference;->shouldPersist()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/csipsimple/widgets/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "SeekBarPrefs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/SeekBarPreference;->persistFloat(F)Z

    .line 121
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seek"    # Landroid/widget/SeekBar;
    .param p2, "aValue"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 124
    int-to-double v1, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/csipsimple/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/csipsimple/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    if-nez v2, :cond_0

    .end local v0    # "t":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    int-to-double v1, p2

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    .line 127
    iget v1, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/csipsimple/widgets/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 128
    return-void

    .line 125
    .restart local v0    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/csipsimple/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restore"    # Z
    .param p2, "aDefaultValue"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 106
    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/csipsimple/widgets/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->defaultValue:F

    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/SeekBarPreference;->getPersistedFloat(F)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    .line 111
    .end local p2    # "aDefaultValue":Ljava/lang/Object;
    :goto_1
    return-void

    .line 107
    .restart local p2    # "aDefaultValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_1
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "aDefaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/csipsimple/widgets/SeekBarPreference;->value:F

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 132
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 136
    return-void
.end method
