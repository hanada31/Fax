.class public final Lcom/csipsimple/utils/SipProfileJson;
.super Ljava/lang/Object;
.source "SipProfileJson.java"


# static fields
.field private static final FILTER_KEY:Ljava/lang/String; = "filters"

.field private static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final THIS_FILE:Ljava/lang/String; = "SipProfileJson"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static restoreSipConfiguration(Landroid/content/Context;Ljava/io/File;)Z
    .locals 14
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "fileToRestore"    # Ljava/io/File;

    .prologue
    .line 245
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-nez v11, :cond_1

    .line 246
    :cond_0
    const/4 v11, 0x0

    .line 306
    :goto_0
    return v11

    .line 249
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v3, "contentBuf":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 255
    .local v6, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 256
    .local v2, "buf":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 259
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "line":Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    .line 267
    .local v1, "accounts":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .line 269
    .local v10, "settings":Lorg/json/JSONObject;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 271
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 273
    .local v9, "mainJSONObject":Lorg/json/JSONObject;
    const-string v11, "accounts"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 275
    const-string v11, "settings"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 284
    .end local v9    # "mainJSONObject":Lorg/json/JSONObject;
    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 287
    .local v4, "cr":Landroid/content/ContentResolver;
    sget-object v11, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    const-string v12, "1"

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    sget-object v11, Lcom/csipsimple/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    const-string v12, "1"

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v7, v11, :cond_5

    .line 301
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "i":I
    :cond_2
    if-eqz v10, :cond_6

    .line 302
    invoke-static {p0, v10}, Lcom/csipsimple/utils/SipProfileJson;->restoreSipSettings(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 303
    const/4 v11, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "accounts":Lorg/json/JSONArray;
    .end local v10    # "settings":Lorg/json/JSONObject;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v6    # "fr":Ljava/io/FileReader;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 260
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v6    # "fr":Ljava/io/FileReader;
    .end local v8    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 261
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v11, "SipProfileJson"

    const-string v12, "Error while restoring"

    invoke-static {v11, v12, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 262
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 263
    .local v5, "e":Ljava/io/IOException;
    const-string v11, "SipProfileJson"

    const-string v12, "Error while restoring"

    invoke-static {v11, v12, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 277
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "accounts":Lorg/json/JSONArray;
    .restart local v10    # "settings":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    .line 278
    .local v5, "e":Lorg/json/JSONException;
    const-string v11, "SipProfileJson"

    const-string v12, "Error while parsing saved file"

    invoke-static {v11, v12, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 281
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 293
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "i":I
    :cond_5
    :try_start_3
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 294
    .local v0, "account":Lorg/json/JSONObject;
    invoke-static {v0, v4}, Lcom/csipsimple/utils/SipProfileJson;->restoreSipProfile(Lorg/json/JSONObject;Landroid/content/ContentResolver;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 291
    .end local v0    # "account":Lorg/json/JSONObject;
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 295
    :catch_3
    move-exception v5

    .line 296
    .restart local v5    # "e":Lorg/json/JSONException;
    const-string v11, "SipProfileJson"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unable to parse item "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 306
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v7    # "i":I
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private static restoreSipProfile(Lorg/json/JSONObject;Landroid/content/ContentResolver;)Z
    .locals 12
    .param p0, "jsonObj"    # Lorg/json/JSONObject;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 201
    new-instance v0, Lcom/csipsimple/utils/Columns;

    sget-object v9, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    .line 202
    sget-object v10, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION_TYPES:[Ljava/lang/Class;

    .line 201
    invoke-direct {v0, v9, v10}, Lcom/csipsimple/utils/Columns;-><init>([Ljava/lang/String;[Ljava/lang/Class;)V

    .line 203
    .local v0, "cols":Lcom/csipsimple/utils/Columns;
    invoke-virtual {v0, p0}, Lcom/csipsimple/utils/Columns;->jsonToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v1

    .line 205
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "id"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 206
    .local v7, "profileId":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_0

    .line 207
    sget-object v9, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v9, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 208
    .local v6, "insertedUri":Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 214
    .end local v6    # "insertedUri":Landroid/net/Uri;
    :cond_0
    new-instance v0, Lcom/csipsimple/utils/Columns;

    .end local v0    # "cols":Lcom/csipsimple/utils/Columns;
    sget-object v9, Lcom/csipsimple/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    sget-object v10, Lcom/csipsimple/models/Filter;->FULL_PROJ_TYPES:[Ljava/lang/Class;

    invoke-direct {v0, v9, v10}, Lcom/csipsimple/utils/Columns;-><init>([Ljava/lang/String;[Ljava/lang/Class;)V

    .line 216
    .restart local v0    # "cols":Lcom/csipsimple/utils/Columns;
    :try_start_0
    const-string v9, "filters"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 217
    .local v4, "filtersObj":Lorg/json/JSONArray;
    const-string v9, "SipProfileJson"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "We have filters for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v5, v9, :cond_1

    .line 229
    .end local v4    # "filtersObj":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :goto_1
    const/4 v9, 0x0

    return v9

    .line 219
    .restart local v4    # "filtersObj":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    :cond_1
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 221
    .local v3, "filterObj":Lorg/json/JSONObject;
    invoke-virtual {v0, v3}, Lcom/csipsimple/utils/Columns;->jsonToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v1

    .line 222
    const-string v9, "account"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    sget-object v9, Lcom/csipsimple/api/SipManager;->FILTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v9, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    .end local v3    # "filterObj":Lorg/json/JSONObject;
    .end local v4    # "filtersObj":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Lorg/json/JSONException;
    const-string v9, "SipProfileJson"

    const-string v10, "Error while restoring filters"

    invoke-static {v9, v10, v2}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static restoreSipSettings(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "settingsObj"    # Lorg/json/JSONObject;

    .prologue
    .line 233
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "prefs":Lcom/csipsimple/utils/PreferencesWrapper;
    invoke-virtual {v0, p1}, Lcom/csipsimple/utils/PreferencesWrapper;->restoreSipSettings(Lorg/json/JSONObject;)V

    .line 235
    return-void
.end method

.method public static saveSipConfiguration(Landroid/content/Context;)Z
    .locals 11
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 159
    invoke-static {p0}, Lcom/csipsimple/utils/PreferencesWrapper;->getConfigFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 160
    .local v2, "dir":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 161
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 162
    .local v1, "d":Ljava/util/Date;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "backup_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 163
    const-string v9, "yy-MM-dd_kkmmss"

    invoke-static {v9, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v4, "file":Ljava/io/File;
    const-string v8, "SipProfileJson"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Out dir "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v0, "configChain":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "accounts"

    invoke-static {p0}, Lcom/csipsimple/utils/SipProfileJson;->serializeSipProfiles(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    :try_start_1
    const-string v8, "settings"

    invoke-static {p0}, Lcom/csipsimple/utils/SipProfileJson;->serializeSipSettings(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_1
    :try_start_2
    new-instance v5, Ljava/io/FileWriter;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 181
    .local v5, "fstream":Ljava/io/FileWriter;
    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 182
    .local v6, "out":Ljava/io/BufferedWriter;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    const/4 v7, 0x1

    .line 192
    .end local v0    # "configChain":Lorg/json/JSONObject;
    .end local v1    # "d":Ljava/util/Date;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fstream":Ljava/io/FileWriter;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_2
    return v7

    .line 169
    .restart local v0    # "configChain":Lorg/json/JSONObject;
    .restart local v1    # "d":Ljava/util/Date;
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 170
    .local v3, "e":Lorg/json/JSONException;
    const-string v8, "SipProfileJson"

    const-string v9, "Impossible to add profiles"

    invoke-static {v8, v9, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 175
    .restart local v3    # "e":Lorg/json/JSONException;
    const-string v8, "SipProfileJson"

    const-string v9, "Impossible to add profiles"

    invoke-static {v8, v9, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 186
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 188
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "SipProfileJson"

    const-string v9, "Impossible to save config to disk"

    invoke-static {v8, v9, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static serializeBaseFilter(Lcom/csipsimple/models/Filter;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "filter"    # Lcom/csipsimple/models/Filter;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/csipsimple/models/Filter;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 70
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v0, Lcom/csipsimple/utils/Columns;

    sget-object v2, Lcom/csipsimple/models/Filter;->FULL_PROJ:[Ljava/lang/String;

    sget-object v3, Lcom/csipsimple/models/Filter;->FULL_PROJ_TYPES:[Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Lcom/csipsimple/utils/Columns;-><init>([Ljava/lang/String;[Ljava/lang/Class;)V

    .line 71
    .local v0, "cols":Lcom/csipsimple/utils/Columns;
    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/Columns;->contentValueToJSON(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method private static serializeBaseSipProfile(Lcom/csipsimple/api/SipProfile;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "profile"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/csipsimple/api/SipProfile;->getDbContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 62
    .local v1, "cv":Landroid/content/ContentValues;
    new-instance v0, Lcom/csipsimple/utils/Columns;

    sget-object v2, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    .line 63
    sget-object v3, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION_TYPES:[Ljava/lang/Class;

    .line 62
    invoke-direct {v0, v2, v3}, Lcom/csipsimple/utils/Columns;-><init>([Ljava/lang/String;[Ljava/lang/Class;)V

    .line 64
    .local v0, "cols":Lcom/csipsimple/utils/Columns;
    invoke-virtual {v0, v1}, Lcom/csipsimple/utils/Columns;->contentValueToJSON(Landroid/content/ContentValues;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public static serializeSipProfile(Landroid/content/Context;Lcom/csipsimple/api/SipProfile;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/csipsimple/api/SipProfile;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/csipsimple/utils/SipProfileJson;->serializeBaseSipProfile(Lcom/csipsimple/api/SipProfile;)Lorg/json/JSONObject;

    move-result-object v5

    .line 76
    .local v5, "jsonProfile":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v4, "jsonFilters":Lorg/json/JSONArray;
    iget-wide v7, p1, Lcom/csipsimple/api/SipProfile;->id:J

    invoke-static {p0, v7, v8}, Lcom/csipsimple/models/Filter;->getFiltersCursorForAccount(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v0

    .line 79
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 80
    .local v6, "numRows":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    :try_start_0
    const-string v7, "filters"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :goto_1
    return-object v5

    .line 82
    :cond_0
    new-instance v2, Lcom/csipsimple/models/Filter;

    invoke-direct {v2, v0}, Lcom/csipsimple/models/Filter;-><init>(Landroid/database/Cursor;)V

    .line 84
    .local v2, "f":Lcom/csipsimple/models/Filter;
    :try_start_1
    invoke-static {v2}, Lcom/csipsimple/utils/SipProfileJson;->serializeBaseFilter(Lcom/csipsimple/models/Filter;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "SipProfileJson"

    const-string v8, "Impossible to add fitler"

    invoke-static {v7, v8, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 94
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "f":Lcom/csipsimple/models/Filter;
    :catch_1
    move-exception v1

    .line 95
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string v7, "SipProfileJson"

    const-string v8, "Impossible to add fitlers"

    invoke-static {v7, v8, v1}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static serializeSipProfiles(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 15
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 104
    .local v12, "jsonSipProfiles":Lorg/json/JSONArray;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/csipsimple/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    .line 105
    sget-object v2, Lcom/csipsimple/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 106
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 108
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAvailableCallHandlers(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    .line 128
    .local v8, "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    return-object v12

    .line 109
    .end local v8    # "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    new-instance v6, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v6, v7}, Lcom/csipsimple/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 110
    .local v6, "account":Lcom/csipsimple/api/SipProfile;
    invoke-static {p0, v6}, Lcom/csipsimple/utils/SipProfileJson;->serializeSipProfile(Landroid/content/Context;Lcom/csipsimple/api/SipProfile;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 112
    .local v13, "p":Lorg/json/JSONObject;
    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v9

    .line 114
    .local v9, "e":Lorg/json/JSONException;
    :try_start_3
    const-string v0, "SipProfileJson"

    const-string v1, "Impossible to add profile"

    invoke-static {v0, v1, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 118
    .end local v6    # "account":Lcom/csipsimple/api/SipProfile;
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v13    # "p":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    .line 119
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SipProfileJson"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 120
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 122
    throw v0

    .line 128
    .restart local v8    # "callHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 130
    .local v14, "packageName":Ljava/lang/String;
    invoke-static {p0, v14}, Lcom/csipsimple/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 131
    .local v10, "externalAccountId":Ljava/lang/Long;
    new-instance v11, Lcom/csipsimple/api/SipProfile;

    invoke-direct {v11}, Lcom/csipsimple/api/SipProfile;-><init>()V

    .line 132
    .local v11, "gsmProfile":Lcom/csipsimple/api/SipProfile;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v11, Lcom/csipsimple/api/SipProfile;->id:J

    .line 133
    invoke-static {p0, v11}, Lcom/csipsimple/utils/SipProfileJson;->serializeSipProfile(Landroid/content/Context;Lcom/csipsimple/api/SipProfile;)Lorg/json/JSONObject;

    move-result-object v13

    .line 135
    .restart local v13    # "p":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v12, v1, v13}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 136
    :catch_2
    move-exception v9

    .line 137
    .local v9, "e":Lorg/json/JSONException;
    const-string v1, "SipProfileJson"

    const-string v2, "Impossible to add profile"

    invoke-static {v1, v2, v9}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static serializeSipSettings(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 145
    new-instance v0, Lcom/csipsimple/utils/PreferencesWrapper;

    invoke-direct {v0, p0}, Lcom/csipsimple/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "prefs":Lcom/csipsimple/utils/PreferencesWrapper;
    invoke-virtual {v0}, Lcom/csipsimple/utils/PreferencesWrapper;->serializeSipSettings()Lorg/json/JSONObject;

    move-result-object v1

    return-object v1
.end method
