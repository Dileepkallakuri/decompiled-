.class public final Lcom/google/android/gms/internal/gtm/zzce;
.super Lcom/google/android/gms/internal/gtm/zzbu;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzcd;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzcy;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzfq;

.field private zzd:Lcom/google/android/gms/internal/gtm/zzfa;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzr()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzfq;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzc:Lcom/google/android/gms/internal/gtm/zzfq;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzcd;-><init>(Lcom/google/android/gms/internal/gtm/zzce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zza:Lcom/google/android/gms/internal/gtm/zzcd;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzca;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzca;-><init>(Lcom/google/android/gms/internal/gtm/zzce;Lcom/google/android/gms/internal/gtm/zzbx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzb:Lcom/google/android/gms/internal/gtm/zzcy;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/gtm/zzce;)Lcom/google/android/gms/internal/gtm/zzcd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zza:Lcom/google/android/gms/internal/gtm/zzcd;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/gtm/zzce;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    const-string v0, "Disconnected from device AnalyticsService"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzs()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzk()V

    :cond_0
    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/gtm/zzce;Lcom/google/android/gms/internal/gtm/zzfa;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzce;->zzj()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzs()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzj()V

    return-void
.end method

.method private final zzj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzc:Lcom/google/android/gms/internal/gtm/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfq;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzb:Lcom/google/android/gms/internal/gtm/zzcy;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzew;->zzK:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcy;->zzg(J)V

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzce;->zza:Lcom/google/android/gms/internal/gtm/zzcd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzs()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzk()V

    :cond_0
    return-void
.end method

.method protected final zzd()V
    .locals 0

    return-void
.end method

.method public final zze()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zze()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzce;->zzj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "Failed to clear hits from AnalyticsService"

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    return v1
.end method

.method public final zzf()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zza:Lcom/google/android/gms/internal/gtm/zzcd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcd;->zza()Lcom/google/android/gms/internal/gtm/zzfa;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzce;->zzj()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/gtm/zzez;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzce;->zzd:Lcom/google/android/gms/internal/gtm/zzfa;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    return v6

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzh()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzi()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzk()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzg()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzd()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzfa;->zzf(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzce;->zzj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Failed to send hits to AnalyticsService"

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    return v6
.end method
