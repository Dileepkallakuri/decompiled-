.class public final Lcom/google/android/gms/internal/gtm/zzho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field static final zza:Lcom/google/android/gms/internal/gtm/zzgw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzgw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzgw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzho;->zza:Lcom/google/android/gms/internal/gtm/zzgw;

    return-void
.end method

.method public static zza(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgw;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleTagManager"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgw;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleTagManager"

    .line 2
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static zzc(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgw;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleTagManager"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static zzd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgw;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleTagManager"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static zze(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgw;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleTagManager"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static zzf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgw;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleTagManager"

    .line 2
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
