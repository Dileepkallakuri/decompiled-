.class public final Lcom/google/android/gms/internal/gtm/zzqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzpk;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzqe;

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzpt;

.field private final zze:Lcom/google/android/gms/internal/gtm/zzqb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzpt;Lcom/google/android/gms/internal/gtm/zzpk;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzqe;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzqb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzqb;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zza:Landroid/content/Context;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzpk;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzb:Lcom/google/android/gms/internal/gtm/zzpk;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzd:Lcom/google/android/gms/internal/gtm/zzpt;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzc:Lcom/google/android/gms/internal/gtm/zzqe;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zze:Lcom/google/android/gms/internal/gtm/zzqb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, " "

    const-string v1, "NetworkLoader: Error when parsing downloaded resources from url: "

    const-string v2, "NetworkLoader: Error when loading resource from url: "

    const-string v3, "NetworkLoader: Error when loading resource for url: "

    const-string v4, "NetworkLoader: No data was retrieved from the given url: "

    const-string v5, "Loading resource from "

    const-string v6, "android.permission.INTERNET"

    .line 1
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/gtm/zzqf;->zza(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const-string v0, "Missing android.permission.INTERNET. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.INTERNET\" />"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/gtm/zzqf;->zza(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v0, "Missing android.permission.ACCESS_NETWORK_STATE. Please add the following declaration to your AndroidManifest.xml: <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zza:Landroid/content/Context;

    const-string v8, "connectivity"

    .line 5
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 6
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 7
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v6, "Starting to load resource from Network."

    .line 10
    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzqc;

    invoke-direct {v6}, Lcom/google/android/gms/internal/gtm/zzqc;-><init>()V

    :try_start_0
    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zze:Lcom/google/android/gms/internal/gtm/zzqb;

    iget-object v9, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzd:Lcom/google/android/gms/internal/gtm/zzpt;

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/gtm/zzqb;->zza(Lcom/google/android/gms/internal/gtm/zzph;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x2

    .line 13
    :try_start_1
    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/gtm/zzqd;->zza(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/internal/gtm/zzqh; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzb:Lcom/google/android/gms/internal/gtm/zzpk;

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-interface {v6}, Lcom/google/android/gms/internal/gtm/zzqd;->zzb()V

    return-void

    :catch_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzb:Lcom/google/android/gms/internal/gtm/zzpk;

    const/4 v3, 0x3

    .line 19
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    .line 22
    :goto_0
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/IOUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzb:Lcom/google/android/gms/internal/gtm/zzpk;

    .line 24
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzpk;->zzc([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17
    invoke-interface {v6}, Lcom/google/android/gms/internal/gtm/zzqd;->zzb()V

    return-void

    :catch_2
    move-exception v2

    .line 25
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzb:Lcom/google/android/gms/internal/gtm/zzpk;

    .line 27
    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    invoke-interface {v6}, Lcom/google/android/gms/internal/gtm/zzqd;->zzb()V

    return-void

    .line 28
    :catch_3
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzb:Lcom/google/android/gms/internal/gtm/zzpk;

    .line 21
    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 17
    invoke-interface {v6}, Lcom/google/android/gms/internal/gtm/zzqd;->zzb()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Lcom/google/android/gms/internal/gtm/zzqd;->zzb()V

    .line 28
    throw v0

    :cond_3
    :goto_1
    const-string v0, "No network connectivity - Offline"

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    .line 2
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zzb:Lcom/google/android/gms/internal/gtm/zzpk;

    .line 9
    invoke-virtual {v0, v7, v7}, Lcom/google/android/gms/internal/gtm/zzpk;->zzb(II)V

    return-void
.end method

.method final zza(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqf;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
