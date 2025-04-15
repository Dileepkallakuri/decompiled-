.class final Lcom/google/android/gms/internal/gtm/zzhs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzhg;


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;

.field private static final zzc:Ljava/lang/String;

.field private static final zzd:Ljava/lang/String;


# instance fields
.field private final zze:Lcom/google/android/gms/internal/gtm/zzhr;

.field private volatile zzf:Lcom/google/android/gms/internal/gtm/zzgy;

.field private final zzg:Landroid/content/Context;

.field private final zzh:Ljava/lang/String;

.field private zzi:J

.field private final zzj:Lcom/google/android/gms/common/util/Clock;

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/gtm/zzih;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "gtm_hit_unique_ids"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "hit_unique_id"

    aput-object v5, v1, v4

    const-string v6, "CREATE TABLE IF NOT EXISTS %s (\'%s\' TEXT UNIQUE);"

    .line 1
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzhs;->zza:Ljava/lang/String;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "gtm_hits"

    aput-object v6, v1, v2

    const-string v7, "hit_id"

    aput-object v7, v1, v4

    const-string v7, "hit_time"

    aput-object v7, v1, v0

    const-string v7, "hit_url"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const-string v7, "hit_first_send_time"

    const/4 v9, 0x4

    aput-object v7, v1, v9

    const-string v7, "hit_method"

    const/4 v10, 0x5

    aput-object v7, v1, v10

    const/4 v7, 0x6

    aput-object v5, v1, v7

    const/4 v11, 0x7

    const-string v12, "hit_headers"

    aput-object v12, v1, v11

    const/16 v11, 0x8

    const-string v12, "hit_body"

    aput-object v12, v1, v11

    const-string v11, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT UNIQUE, \'%s\' TEXT, \'%s\' TEXT);"

    .line 2
    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzb:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v11, "save_unique_on_delete"

    aput-object v11, v1, v2

    aput-object v6, v1, v4

    aput-object v5, v1, v0

    aput-object v3, v1, v8

    aput-object v5, v1, v9

    aput-object v5, v1, v10

    const-string v11, "CREATE TRIGGER IF NOT EXISTS %s DELETE ON %s FOR EACH ROW WHEN OLD.%s NOTNULL BEGIN     INSERT OR IGNORE INTO %s (%s) VALUES (OLD.%s); END;"

    .line 3
    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzc:Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v7, "check_unique_on_insert"

    aput-object v7, v1, v2

    aput-object v6, v1, v4

    aput-object v5, v1, v0

    aput-object v3, v1, v8

    aput-object v5, v1, v9

    aput-object v5, v1, v10

    const-string v0, "CREATE TRIGGER IF NOT EXISTS %s BEFORE INSERT ON %s FOR EACH ROW WHEN NEW.%s NOT NULL BEGIN     SELECT RAISE(ABORT, \'Duplicate unique ID.\')     WHERE EXISTS (SELECT 1 FROM %s WHERE %s = NEW.%s); END;"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzhs;->zzd:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzih;Landroid/content/Context;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzg:Landroid/content/Context;

    const-string p3, "gtm_urls.db"

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzl:Lcom/google/android/gms/internal/gtm/zzih;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzj:Lcom/google/android/gms/common/util/Clock;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzhr;

    .line 3
    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzhr;-><init>(Lcom/google/android/gms/internal/gtm/zzhs;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zze:Lcom/google/android/gms/internal/gtm/zzhr;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zziq;

    new-instance p3, Lcom/google/android/gms/internal/gtm/zzhq;

    .line 4
    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/gtm/zzhq;-><init>(Lcom/google/android/gms/internal/gtm/zzhs;)V

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zziq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzip;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzf:Lcom/google/android/gms/internal/gtm/zzgy;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzi:J

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzk:I

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/gtm/zzhs;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzg:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/gtm/zzhs;)Lcom/google/android/gms/common/util/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzj:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/gtm/zzhs;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzg()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzhs;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzh()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzhs;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzhs;->zza:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzj()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzhs;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/gtm/zzhs;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzhs;->zzo(J)V

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/gtm/zzhs;JJ)V
    .locals 3

    const-string v0, "Error opening database for getNumStoredHits."

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_first_send_time"

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x1

    :try_start_0
    new-array p3, p3, [Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, p3, v2

    const-string p4, "gtm_hits"

    const-string v2, "hit_id=?"

    invoke-virtual {v0, p4, v1, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    .line 5
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Error setting HIT_FIRST_DISPATCH_TIME for hitId "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzhs;->zzo(J)V

    return-void
.end method

.method private final zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zze:Lcom/google/android/gms/internal/gtm/zzhr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzhr;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzg:Landroid/content/Context;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Crash reported successfully."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Failed to report crash"

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzo(J)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zzm([Ljava/lang/String;)V

    return-void
.end method

.method private final zzp(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Hit stored (url = "

    const-string v1, "Error opening database for putHit"

    .line 1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzhs;->zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "hit_time"

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "hit_url"

    .line 4
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hit_first_send_time"

    const/4 p2, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p4, :cond_1

    const-string p4, "GET"

    :cond_1
    const-string p1, "hit_method"

    .line 6
    invoke-virtual {v2, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hit_unique_id"

    .line 7
    invoke-virtual {v2, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p6, :cond_2

    move-object p4, p1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    const-string p5, "hit_headers"

    invoke-virtual {v2, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "hit_body"

    .line 9
    invoke-virtual {v2, p4, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p4, "gtm_hits"

    .line 10
    invoke-virtual {v1, p4, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzl:Lcom/google/android/gms/internal/gtm/zzih;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzih;->zza(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error storing hit: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-void

    :catch_1
    const-string p1, "Hit has already been sent: "

    .line 8
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "%s ASC"

    const-string v2, "GTM Dispatch running..."

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzf:Lcom/google/android/gms/internal/gtm/zzgy;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzgy;->zzb()Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Error opening database for peekHits"

    .line 4
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzhs;->zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v13, "hit_first_send_time"

    const-string v15, "hit_id"

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-nez v3, :cond_0

    move v14, v12

    goto/16 :goto_c

    :cond_0
    :try_start_0
    const-string v4, "hit_time"

    .line 57
    filled-new-array {v15, v4, v13}, [Ljava/lang/String;

    move-result-object v6

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v15, v4, v12

    const-string v5, "gtm_hits"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 5
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x28

    .line 6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v4, v3

    move v14, v11

    move-object/from16 v11, v16

    move v14, v12

    move-object/from16 v12, v18

    .line 7
    :try_start_1
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v11, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 9
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v10, 0x2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzhb;

    .line 10
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Lcom/google/android/gms/internal/gtm/zzhb;-><init>(JJJ)V

    .line 11
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v2, :cond_1

    :cond_2
    if-eqz v12, :cond_3

    .line 14
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    :try_start_4
    const-string v2, "hit_url"

    const-string v4, "hit_method"

    const-string v5, "hit_headers"

    const-string v6, "hit_body"

    filled-new-array {v15, v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v15, v4, v14

    const-string v5, "gtm_hits"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v4, v3

    move v3, v10

    move-object v10, v2

    move-object v2, v11

    move-object v11, v0

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    .line 18
    :try_start_5
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 19
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    move v4, v14

    .line 20
    :cond_4
    move-object v0, v12

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    if-lez v0, :cond_7

    .line 22
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzhb;

    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/gtm/zzhb;->zzj(Ljava/lang/String;)V

    .line 23
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzhb;

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/gtm/zzhb;->zzi(Ljava/lang/String;)V

    .line 24
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzhb;

    const/4 v5, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/gtm/zzhb;->zzg(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, 0x3

    .line 25
    :try_start_7
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 26
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    .line 28
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v7, v14

    .line 29
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 30
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    .line 32
    :cond_6
    :try_start_8
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzhb;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/gtm/zzhb;->zzh(Ljava/util/Map;)V

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v5, v3, [Ljava/lang/Object;

    .line 33
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzhb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v14

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const-string v0, "Failed to read headers for hitId %d: %s"

    .line 34
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    .line 36
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzhb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v14

    const-string v5, "HitString for hitId %d too large. Hit will be deleted."

    .line 37
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 39
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v0, :cond_4

    :cond_8
    if-eqz v12, :cond_e

    .line 45
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v18, v12

    :goto_3
    move-object/from16 v12, v18

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v11

    move-object/from16 v18, v12

    :goto_4
    move-object/from16 v12, v18

    .line 40
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in peekHits fetching hit url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v14

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzhb;

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzhb;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    const/4 v3, 0x1

    .line 44
    :cond_a
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :cond_b
    :goto_7
    if-eqz v12, :cond_c

    .line 45
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object v2, v0

    goto :goto_c

    :goto_8
    if-eqz v12, :cond_d

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_d
    throw v0

    :catch_4
    move-exception v0

    move-object v2, v11

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v18, v12

    move-object/from16 v14, v18

    goto/16 :goto_11

    :catch_5
    move-exception v0

    :goto_9
    move-object/from16 v18, v12

    move-object/from16 v12, v18

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move v14, v12

    :goto_a
    const/4 v12, 0x0

    .line 13
    :goto_b
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in peekHits fetching hitIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v12, :cond_e

    .line 14
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_e
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "...nothing to dispatch"

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzl:Lcom/google/android/gms/internal/gtm/zzih;

    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzih;->zza(Z)V

    return-void

    :cond_f
    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzf:Lcom/google/android/gms/internal/gtm/zzgy;

    .line 50
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/gtm/zzgy;->zza(Ljava/util/List;)V

    const-string v0, "Error opening database for getNumStoredHits."

    .line 51
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_f

    :cond_10
    :try_start_b
    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "gtm_hits"

    const-string v5, "hit_first_send_time=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 52
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 53
    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v2, :cond_11

    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_d

    :catchall_5
    move-exception v0

    const/4 v14, 0x0

    goto :goto_10

    :catch_9
    move-exception v0

    const/4 v2, 0x0

    .line 54
    :goto_d
    :try_start_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting num untried hits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-nez v2, :cond_13

    move v12, v14

    :cond_11
    :goto_e
    if-lez v12, :cond_12

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzin;->zzf()Lcom/google/android/gms/internal/gtm/zzin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzin;->zzi()V

    :cond_12
    :goto_f
    return-void

    .line 55
    :cond_13
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_6
    move-exception v0

    move-object v14, v2

    :goto_10
    if-eqz v14, :cond_14

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_14
    throw v0

    :catchall_7
    move-exception v0

    move-object v14, v12

    :goto_11
    if-eqz v14, :cond_15

    .line 14
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 15
    :cond_15
    throw v0

    :cond_16
    return-void
.end method

.method public final zzb(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "hit_id"

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzj:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzi:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    const-string v5, "gtm_hits"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gtz v4, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    iput-wide v2, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzi:J

    const-string v2, "Error opening database for deleteStaleHits."

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gtm/zzhs;->zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzj:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    new-array v8, v6, [Ljava/lang/String;

    const-wide v9, -0x9a7ec800L

    add-long/2addr v3, v9

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v7

    const-string v3, "HIT_TIME < ?"

    invoke-virtual {v2, v5, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removed "

    .line 5
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stale hits."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzl:Lcom/google/android/gms/internal/gtm/zzih;

    .line 6
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/gtm/zzhs;->zzc(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v7

    .line 7
    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzih;->zza(Z)V

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/gtm/zzhs;->zzc(Ljava/lang/String;)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/gtm/zzhs;->zzk:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v6

    if-lez v2, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "Error opening database for peekHitIds."

    .line 10
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/gtm/zzhs;->zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 25
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    const-string v9, "gtm_hits"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v0, "%s ASC"

    .line 11
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 13
    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    :cond_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 17
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in peekHits fetching hitIds: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_6

    .line 18
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Store full, deleting "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hits to make room."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/String;

    .line 21
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zzm([Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    if-eqz v4, :cond_7

    .line 18
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_7
    throw v0

    .line 22
    :cond_8
    :goto_5
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/gtm/zzhs;->zzp(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhv;->zza()Lcom/google/android/gms/internal/gtm/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzhv;->zzd()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Sending hits immediately under preview."

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzhs;->zza()V

    :cond_9
    return-void
.end method

.method final zzc(Ljava/lang/String;)I
    .locals 4

    const-string p1, "Error getting numStoredRecords: "

    const-string v0, "Error opening database for getNumRecords."

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SELECT COUNT(*) from gtm_hits"

    .line 2
    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v1, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    :cond_1
    return v1

    .line 6
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 7
    :cond_3
    throw p1

    :cond_4
    return v1
.end method

.method final zzm([Ljava/lang/String;)V
    .locals 6

    const-string v0, "gtm_hits"

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "Error opening database for deleteHits."

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/gtm/zzhs;->zzn(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "?"

    .line 2
    invoke-static {v1, v5}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v5, ","

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "HIT_ID in (%s)"

    .line 3
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-virtual {v2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhs;->zzl:Lcom/google/android/gms/internal/gtm/zzih;

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzhs;->zzc(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    .line 6
    :goto_0
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/gtm/zzih;->zza(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error deleting hits: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
