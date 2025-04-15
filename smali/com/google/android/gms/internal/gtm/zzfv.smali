.class public final Lcom/google/android/gms/internal/gtm/zzfv;
.super Lcom/google/android/gms/internal/gtm/zzbu;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field protected zza:Ljava/lang/String;

.field protected zzb:Ljava/lang/String;

.field protected zzc:Z

.field protected zzd:I

.field protected zze:Z

.field protected zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zzf:Z

    return v0
.end method

.method protected final zzd()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PackageManager doesn\'t know about the app package"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzQ(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_a

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzt()Lcom/google/android/gms/internal/gtm/zzbx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzex;

    .line 8
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/gtm/zzex;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzcu;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;Lcom/google/android/gms/internal/gtm/zzct;)V

    .line 9
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/gtm/zzcu;->zza(I)Lcom/google/android/gms/internal/gtm/zzcs;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzey;

    if-eqz v0, :cond_a

    const-string v1, "Loading global XML config values"

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzey;->zza:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zzb:Ljava/lang/String;

    const-string v2, "XML config - app name"

    .line 11
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzey;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zza:Ljava/lang/String;

    const-string v2, "XML config - app version"

    .line 12
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzey;->zzc:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 13
    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "verbose"

    .line 14
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    const-string v5, "info"

    .line 15
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    const-string v5, "warning"

    .line 16
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x2

    goto :goto_1

    :cond_5
    const-string v5, "error"

    .line 17
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    if-ltz v1, :cond_7

    const-string v5, "XML config - log level"

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzey;->zzd:I

    if-ltz v1, :cond_8

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zzd:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zzc:Z

    const-string v5, "XML config - dispatch period (sec)"

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget v0, v0, Lcom/google/android/gms/internal/gtm/zzey;->zze:I

    if-eq v0, v3, :cond_a

    if-eq v4, v0, :cond_9

    goto :goto_2

    :cond_9
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zzf:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zze:Z

    const-string v0, "XML config - dry run"

    .line 20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public final zze()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfv;->zze:Z

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    const/4 v0, 0x0

    return v0
.end method
