.class public Lcom/csipsimple/utils/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/Columns$Type;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$csipsimple$utils$Columns$Type:[I


# instance fields
.field private names:[Ljava/lang/String;

.field private types:[Lcom/csipsimple/utils/Columns$Type;


# direct methods
.method static synthetic $SWITCH_TABLE$com$csipsimple$utils$Columns$Type()[I
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/csipsimple/utils/Columns;->$SWITCH_TABLE$com$csipsimple$utils$Columns$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/csipsimple/utils/Columns$Type;->values()[Lcom/csipsimple/utils/Columns$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/csipsimple/utils/Columns$Type;->BOOLEAN:Lcom/csipsimple/utils/Columns$Type;

    invoke-virtual {v1}, Lcom/csipsimple/utils/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/csipsimple/utils/Columns$Type;->DOUBLE:Lcom/csipsimple/utils/Columns$Type;

    invoke-virtual {v1}, Lcom/csipsimple/utils/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/csipsimple/utils/Columns$Type;->FLOAT:Lcom/csipsimple/utils/Columns$Type;

    invoke-virtual {v1}, Lcom/csipsimple/utils/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/csipsimple/utils/Columns$Type;->INT:Lcom/csipsimple/utils/Columns$Type;

    invoke-virtual {v1}, Lcom/csipsimple/utils/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/csipsimple/utils/Columns$Type;->LONG:Lcom/csipsimple/utils/Columns$Type;

    invoke-virtual {v1}, Lcom/csipsimple/utils/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/csipsimple/utils/Columns$Type;->STRING:Lcom/csipsimple/utils/Columns$Type;

    invoke-virtual {v1}, Lcom/csipsimple/utils/Columns$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/csipsimple/utils/Columns;->$SWITCH_TABLE$com$csipsimple$utils$Columns$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    .line 46
    array-length v1, p1

    new-array v1, v1, [Lcom/csipsimple/utils/Columns$Type;

    iput-object v1, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 63
    return-void

    .line 49
    :cond_0
    aget-object v1, p2, v0

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    .line 50
    iget-object v1, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    sget-object v2, Lcom/csipsimple/utils/Columns$Type;->STRING:Lcom/csipsimple/utils/Columns$Type;

    aput-object v2, v1, v0

    .line 47
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_2
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_4

    .line 52
    :cond_3
    iget-object v1, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    sget-object v2, Lcom/csipsimple/utils/Columns$Type;->INT:Lcom/csipsimple/utils/Columns$Type;

    aput-object v2, v1, v0

    goto :goto_1

    .line 53
    :cond_4
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_6

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    sget-object v2, Lcom/csipsimple/utils/Columns$Type;->LONG:Lcom/csipsimple/utils/Columns$Type;

    aput-object v2, v1, v0

    goto :goto_1

    .line 55
    :cond_6
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_8

    .line 56
    :cond_7
    iget-object v1, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    sget-object v2, Lcom/csipsimple/utils/Columns$Type;->FLOAT:Lcom/csipsimple/utils/Columns$Type;

    aput-object v2, v1, v0

    goto :goto_1

    .line 57
    :cond_8
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_9

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_a

    .line 58
    :cond_9
    iget-object v1, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    sget-object v2, Lcom/csipsimple/utils/Columns$Type;->DOUBLE:Lcom/csipsimple/utils/Columns$Type;

    aput-object v2, v1, v0

    goto :goto_1

    .line 59
    :cond_a
    aget-object v1, p2, v0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_b

    aget-object v1, p2, v0

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_1

    .line 60
    :cond_b
    iget-object v1, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    sget-object v2, Lcom/csipsimple/utils/Columns$Type;->BOOLEAN:Lcom/csipsimple/utils/Columns$Type;

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method private static j2cvBoolean(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 177
    .local v0, "v":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "v":Z
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static j2cvDouble(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 169
    .local v0, "v":D
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "v":D
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static j2cvFloat(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v0, v1

    .line 161
    .local v0, "v":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "v":F
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static j2cvInt(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "v":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "v":I
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static j2cvLong(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 145
    .local v0, "v":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "v":J
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static j2cvString(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "j"    # Lorg/json/JSONObject;
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "v":Ljava/lang/String;
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "v":Ljava/lang/String;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public contentValueToJSON(Landroid/content/ContentValues;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v2, "json":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 104
    return-object v2

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/csipsimple/utils/Columns;->$SWITCH_TABLE$com$csipsimple$utils$Columns$Type()[I

    move-result-object v3

    iget-object v4, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/csipsimple/utils/Columns$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 97
    const-string v3, "Col"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid type, can\'t unserialize "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "Col"

    const-string v4, "Invalid type, can\'t unserialize "

    invoke-static {v3, v4, v0}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 79
    .end local v0    # "e":Lorg/json/JSONException;
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 82
    :pswitch_1
    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 85
    :pswitch_2
    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 88
    :pswitch_3
    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 91
    :pswitch_4
    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 94
    :pswitch_5
    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hasField(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public jsonToContentValues(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 131
    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Lcom/csipsimple/utils/Columns;->$SWITCH_TABLE$com$csipsimple$utils$Columns$Type()[I

    move-result-object v2

    iget-object v3, p0, Lcom/csipsimple/utils/Columns;->types:[Lcom/csipsimple/utils/Columns$Type;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/csipsimple/utils/Columns$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 109
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object v2, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v0, v2}, Lcom/csipsimple/utils/Columns;->j2cvString(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :pswitch_1
    iget-object v2, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v0, v2}, Lcom/csipsimple/utils/Columns;->j2cvInt(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :pswitch_2
    iget-object v2, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v0, v2}, Lcom/csipsimple/utils/Columns;->j2cvLong(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :pswitch_3
    iget-object v2, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v0, v2}, Lcom/csipsimple/utils/Columns;->j2cvFloat(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :pswitch_4
    iget-object v2, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v0, v2}, Lcom/csipsimple/utils/Columns;->j2cvDouble(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :pswitch_5
    iget-object v2, p0, Lcom/csipsimple/utils/Columns;->names:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v0, v2}, Lcom/csipsimple/utils/Columns;->j2cvBoolean(Lorg/json/JSONObject;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
