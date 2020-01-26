.class public Lcom/csipsimple/db/DBAdapter;
.super Ljava/lang/Object;
.source "DBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/db/DBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "SIP ACC_DB"


# instance fields
.field private final context:Landroid/content/Context;

.field private databaseHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

.field private opened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/db/DBAdapter;->opened:Z

    .line 43
    iput-object p1, p0, Lcom/csipsimple/db/DBAdapter;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/csipsimple/db/DBAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/csipsimple/db/DBAdapter;->databaseHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    .line 45
    return-void
.end method

.method static synthetic access$0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    invoke-static {p0, p1, p2, p3}, Lcom/csipsimple/db/DBAdapter;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ALTER TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/csipsimple/db/DBAdapter;->databaseHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;->close()V

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/csipsimple/db/DBAdapter;->opened:Z

    .line 416
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/csipsimple/db/DBAdapter;->opened:Z

    return v0
.end method

.method public open()Lcom/csipsimple/db/DBAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/csipsimple/db/DBAdapter;->databaseHelper:Lcom/csipsimple/db/DBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/csipsimple/db/DBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csipsimple/db/DBAdapter;->opened:Z

    .line 407
    return-object p0
.end method
