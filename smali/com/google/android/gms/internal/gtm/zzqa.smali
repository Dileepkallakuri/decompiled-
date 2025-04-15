.class public final Lcom/google/android/gms/internal/gtm/zzqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/ExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzpw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzgb;->zza()Lcom/google/android/gms/internal/gtm/zzfy;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gtm/zzfy;->zza(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzpw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gtm/zzpw;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqa;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqa;->zzb:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqa;->zzc:Lcom/google/android/gms/internal/gtm/zzpw;

    return-void
.end method

.method private static final zzh(Ljava/io/InputStream;)[B
    .locals 4

    const-string v0, "Error closing stream for reading resource from disk"

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    :try_start_2
    const-string v3, "Failed to read the resource from disk"

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 7
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 5
    :catch_2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-object v2

    .line 4
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 6
    throw v1

    .line 5
    :catch_3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-object v2
.end method

.method private static final zzi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "resource_"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqa;->zzb(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method final zzb(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqa;->zza:Landroid/content/Context;

    const-string v1, "google_tagmanager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqa;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqa;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzpy;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzpy;-><init>(Lcom/google/android/gms/internal/gtm/zzqa;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzd(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V
    .locals 4

    const-string v0, "Starting to load a default asset file from Disk."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p1, "Default asset file is not specified. Not proceeding with the loading"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqa;->zzc:Lcom/google/android/gms/internal/gtm/zzpw;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzpw;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzqa;->zzh(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 6
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/gtm/zzpk;->zzc([B)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default asset file not found. "

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Filename: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqa;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzpx;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzpx;-><init>(Lcom/google/android/gms/internal/gtm/zzqa;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzf(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V
    .locals 2

    const-string v0, "Starting to load a saved resource file from Disk."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqa;->zzb(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzqa;->zzh(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/gtm/zzpk;->zzc([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Saved resource not found: "

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzqa;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqa;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzpz;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzpz;-><init>(Lcom/google/android/gms/internal/gtm/zzqa;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
