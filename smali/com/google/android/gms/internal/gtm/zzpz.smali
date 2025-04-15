.class final Lcom/google/android/gms/internal/gtm/zzpz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:[B

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzqa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzqa;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpz;->zzc:Lcom/google/android/gms/internal/gtm/zzqa;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzpz;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzpz;->zzb:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, " saved on Disk."

    const-string v1, "Error closing stream for writing resource to disk"

    const-string v2, "Resource "

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzpz;->zzc:Lcom/google/android/gms/internal/gtm/zzqa;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzpz;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzpz;->zzb:[B

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqa;->zzb(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 4
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 9
    :catch_0
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_1
    :try_start_3
    const-string v5, "Error writing resource to disk. Removing resource from disk"

    .line 5
    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    .line 9
    :catch_2
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    return-void

    .line 7
    :goto_0
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    new-instance v5, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 9
    :catch_3
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 10
    :goto_1
    throw v3

    :catch_4
    const-string v0, "Error opening resource file for writing"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    return-void
.end method
