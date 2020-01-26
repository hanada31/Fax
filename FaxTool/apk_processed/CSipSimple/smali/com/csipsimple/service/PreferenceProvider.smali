.class public Lcom/csipsimple/service/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "PreferenceProvider.java"


# static fields
.field public static final COL_INDEX_NAME:I = 0x0

.field public static final COL_INDEX_VALUE:I = 0x1

.field private static final PREFS:I = 0x1

.field private static final PREF_ID:I = 0x2

.field private static final RAZ:I = 0x3

.field private static final THIS_FILE:Ljava/lang/String; = "PrefsProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private prefs:Lcom/csipsimple/utils/PreferencesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/csipsimple/service/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 60
    sget-object v0, Lcom/csipsimple/service/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.prefs"

    const-string v2, "preferences"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/csipsimple/service/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.prefs"

    const-string v2, "preferences/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/csipsimple/service/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.csipsimple.prefs"

    const-string v2, "raz"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    sget-object v0, Lcom/csipsimple/service/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.csipsimple.pref"

    .line 81
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.csipsimple.pref"

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {p0}, Lcom/csipsimple/service/PreferenceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "order"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "name"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "value"

    aput-object v8, v6, v7

    invoke-direct {v3, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 90
    .local v3, "resCursor":Landroid/database/MatrixCursor;
    sget-object v6, Lcom/csipsimple/service/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 93
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    invoke-static {v2}, Lcom/csipsimple/utils/PreferencesWrapper;->gPrefClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 102
    :goto_0
    const/4 v5, 0x0

    .line 103
    .local v5, "value":Ljava/lang/Object;
    const-class v6, Ljava/lang/String;

    if-ne v0, v6, :cond_3

    .line 104
    iget-object v6, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {v6, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v5, :cond_8

    .line 119
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v3, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 124
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v3

    .line 97
    .restart local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "PrefsProvider"

    const-string v7, "Impossible to retrieve class from selection"

    invoke-static {v6, v7}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3
    const-class v6, Ljava/lang/Float;

    if-ne v0, v6, :cond_4

    .line 106
    iget-object v6, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {v6, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceFloatValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .local v5, "value":Ljava/lang/Float;
    goto :goto_1

    .line 107
    .local v5, "value":Ljava/lang/Object;
    :cond_4
    const-class v6, Ljava/lang/Boolean;

    if-ne v0, v6, :cond_7

    .line 108
    iget-object v6, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {v6, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 109
    .local v4, "v":Ljava/lang/Boolean;
    if-eqz v4, :cond_6

    .line 110
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "value":Ljava/lang/Integer;
    goto :goto_1

    .local v5, "value":Ljava/lang/Object;
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 112
    :cond_6
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "value":Ljava/lang/Integer;
    goto :goto_1

    .line 114
    .end local v4    # "v":Ljava/lang/Boolean;
    .local v5, "value":Ljava/lang/Object;
    :cond_7
    const-class v6, Ljava/lang/Integer;

    if-ne v0, v6, :cond_0

    .line 115
    iget-object v6, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {v6, v2}, Lcom/csipsimple/utils/PreferencesWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .local v5, "value":Ljava/lang/Integer;
    goto :goto_1

    .line 121
    .end local v5    # "value":Ljava/lang/Integer;
    :cond_8
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cv"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "count":I
    sget-object v4, Lcom/csipsimple/service/PreferenceProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    return v1

    .line 135
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 137
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    invoke-static {v3}, Lcom/csipsimple/utils/PreferencesWrapper;->gPrefClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 146
    :goto_1
    const-class v4, Ljava/lang/String;

    if-ne v0, v4, :cond_2

    .line 147
    iget-object v4, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    const-string v5, "value"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 154
    goto :goto_0

    .line 141
    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "PrefsProvider"

    const-string v5, "Impossible to retrieve class from selection"

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    const-class v4, Ljava/lang/Float;

    if-ne v0, v4, :cond_3

    .line 149
    iget-object v4, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    const-string v5, "value"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    goto :goto_2

    .line 150
    :cond_3
    const-class v4, Ljava/lang/Boolean;

    if-ne v0, v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    const-string v5, "value"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/csipsimple/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    goto :goto_2

    .line 156
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "name":Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/csipsimple/service/PreferenceProvider;->prefs:Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-virtual {v4}, Lcom/csipsimple/utils/PreferencesWrapper;->resetAllDefaultValues()V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
