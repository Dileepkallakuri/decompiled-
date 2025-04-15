.class final Lcom/google/android/gms/internal/gtm/zzgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzgf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzgg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzgg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgd;->zza:Lcom/google/android/gms/internal/gtm/zzgg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgd;->zza:Lcom/google/android/gms/internal/gtm/zzgg;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzgg;->zza(Lcom/google/android/gms/internal/gtm/zzgg;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unknown exception. Could not get the Advertising Id Info."

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgd;->zza:Lcom/google/android/gms/internal/gtm/zzgg;

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zzgg;->zzd(Lcom/google/android/gms/internal/gtm/zzgg;Z)V

    const-string v2, "GooglePlayServicesNotAvailableException getting Advertising Id Info"

    .line 4
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "IOException getting Ad Id Info"

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "GooglePlayServicesRepairableException getting Advertising Id Info"

    .line 6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v2, "IllegalStateException getting Advertising Id Info"

    .line 7
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
