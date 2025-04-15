.class final Lcom/google/android/gms/internal/gtm/zzhr;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzhs;

.field private zzb:Z

.field private zzc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzhs;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    const/4 p1, 0x0

    const/4 p3, 0x1

    const-string v0, "gtm_urls.db"

    invoke-direct {p0, p2, v0, p1, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zzc:J

    return-void
.end method

.method private static final zza(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "name"

    .line 1
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    aput-object p0, v7, v0

    const-string v4, "SQLITE_MASTER"

    const-string v6, "name=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4
    :cond_1
    throw p0

    :catch_0
    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method private static final zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 5
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    const-string p1, "Database column %s missing in table %s."

    .line 11
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    .line 13
    :cond_3
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Database has extra columns in table %s."

    .line 14
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    .line 6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 7
    throw p1
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zzb:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zzc:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzhs;->zze(Lcom/google/android/gms/internal/gtm/zzhs;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zze(Lcom/google/android/gms/internal/gtm/zzhs;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zzc:J

    .line 3
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zzd(Lcom/google/android/gms/internal/gtm/zzhs;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zzf(Lcom/google/android/gms/internal/gtm/zzhs;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 5
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzhr;->zzb:Z

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    .line 4
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 6
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    return-void

    :catch_0
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid version number: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const-string v0, "gtm_hit_unique_ids"

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzhr;->zza(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhs;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "hit_unique_id"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzhr;->zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V

    :goto_0
    const-string v0, "gtm_hits"

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzhr;->zza(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhs;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "hit_id"

    const-string v2, "hit_url"

    const-string v3, "hit_time"

    const-string v4, "hit_first_send_time"

    const-string v5, "hit_method"

    const-string v6, "hit_unique_id"

    const-string v7, "hit_headers"

    const-string v8, "hit_body"

    .line 14
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzhr;->zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)V

    .line 13
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhs;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhs;->zzg()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
