.class final Lcom/google/android/gms/internal/gtm/zzcg;
.super Lcom/google/android/gms/internal/gtm/zzbu;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/gtm/zzcf;

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzfq;

.field private final zze:Lcom/google/android/gms/internal/gtm/zzfq;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "hits2"

    aput-object v2, v0, v1

    const-string v3, "hit_id"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v5, "hit_time"

    aput-object v5, v0, v3

    const/4 v6, 0x3

    const-string v7, "hit_url"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "hit_string"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "hit_app_id"

    aput-object v7, v0, v6

    const-string v6, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    .line 1
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzcg;->zza:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v5, v0, v1

    aput-object v2, v0, v4

    const-string v1, "SELECT MAX(%s) FROM %s WHERE 1;"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzcg;->zzb:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfq;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzfq;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcg;->zzd:Lcom/google/android/gms/internal/gtm/zzfq;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfq;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzfq;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcg;->zze:Lcom/google/android/gms/internal/gtm/zzfq;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzad()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zza()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzcf;-><init>(Lcom/google/android/gms/internal/gtm/zzcg;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcg;->zzc:Lcom/google/android/gms/internal/gtm/zzcf;

    return-void
.end method

.method private final zzac(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const/4 p4, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 3
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 5
    invoke-interface {p4, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_0

    .line 4
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p1

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    const-string p3, "Database error"

    .line 6
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzK(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p4, :cond_3

    .line 4
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_3
    throw p1
.end method

.method private final zzad()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    const-string v0, "google_analytics_v4.db"

    return-object v0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/gtm/zzcg;)Lcom/google/android/gms/internal/gtm/zzfq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcg;->zze:Lcom/google/android/gms/internal/gtm/zzfq;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/gtm/zzcg;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzad()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzcg;->zza:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcg;->zzc:Lcom/google/android/gms/internal/gtm/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcf;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error closing database"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Sql error closing database"

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzY(Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hit_id in ("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    if-lez v1, :cond_1

    const-string v3, ","

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Invalid hit id"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v1, ")"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "Deleting dispatched hits. count"

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "hits2"

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    const-string v2, "Deleted fewer hits then expected"

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error deleting hits"

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    throw p1
.end method

.method public final zzZ()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final zza()I
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcg;->zzd:Lcom/google/android/gms/internal/gtm/zzfq;

    const-wide/32 v1, 0x5265c00

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzfq;->zzc(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcg;->zzd:Lcom/google/android/gms/internal/gtm/zzfq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfq;->zzb()V

    const-string v0, "Deleting stale hits (if any)"

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-wide v5, -0x9a7ec800L

    add-long/2addr v2, v5

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "hits2"

    const-string v2, "hit_time < ?"

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v1, "Deleted stale hits, count"

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public final zzaa()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method final zzab()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzb()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT COUNT(*) FROM hits2"

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    .line 8
    :cond_1
    :try_start_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Database returned empty set"

    invoke-direct {v0, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "Database error"

    .line 9
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzK(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_2
    throw v0
.end method

.method public final zzc()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzcg;->zzb:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzcg;->zzac(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final zzd()V
    .locals 0

    return-void
.end method

.method public final zze(JLjava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 1
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "0"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    aput-object p3, p1, p2

    const/4 p2, 0x2

    aput-object p4, p1, p2

    const-string p2, "SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?"

    const-wide/16 p3, 0x0

    .line 5
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/google/android/gms/internal/gtm/zzcg;->zzac(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method final zzf()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcg;->zzc:Lcom/google/android/gms/internal/gtm/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error opening database"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    throw v0
.end method

.method public final zzj(J)Ljava/util/List;
    .locals 16

    move-object/from16 v11, p0

    const-string v0, "hit_id"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ltz v1, :cond_0

    move v1, v13

    goto :goto_0

    :cond_0
    move v1, v12

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "hit_time"

    const-string v4, "hit_string"

    const-string v5, "hit_url"

    const-string v6, "hit_app_id"

    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v0, v3, v12

    const-string v0, "hits2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    .line 5
    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    move-object v3, v0

    .line 7
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    :cond_1
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 11
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x2

    .line 12
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 13
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 14
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 15
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/gtm/zzcg;->zzk(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    move v6, v13

    goto :goto_2

    :cond_2
    const-string v1, "http:"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v6, v12

    .line 16
    :goto_2
    new-instance v15, Lcom/google/android/gms/internal/gtm/zzez;

    const/4 v10, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    .line 18
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/gtm/zzez;-><init>(Lcom/google/android/gms/internal/gtm/zzbt;Ljava/util/Map;JZJILjava/util/List;)V

    .line 19
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :cond_4
    if-eqz v14, :cond_5

    .line 23
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    :try_start_2
    const-string v2, "Error loading hits from the database"

    .line 21
    invoke-virtual {v11, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz v1, :cond_6

    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_6
    throw v0
.end method

.method final zzk(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    const-string v0, "?"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/HttpUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Error parsing hit parameters"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    .line 6
    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method final zzl(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    const-string v0, "?"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance p1, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/HttpUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Error parsing property parameters"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    .line 6
    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method public final zzm()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzf()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final zzn(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "Deleting hit, id"

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzcg;->zzY(Ljava/util/List;)V

    return-void
.end method
