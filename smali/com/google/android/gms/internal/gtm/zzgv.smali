.class final Lcom/google/android/gms/internal/gtm/zzgv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public static zza(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Crash reported successfully."

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "Failed to report crash"

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Crash reported successfully."

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "Failed to report crash"

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public static zzc(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Crash reported successfully."

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "Failed to report crash"

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void
.end method
