.class final Lcom/google/android/gms/internal/gtm/zzjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final getLogLevel()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final info(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 0

    const-string p1, "GA uses GTM logger. Please use TagManager.setLogLevel(int) instead."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-void
.end method
