.class public final Lcom/google/android/gms/internal/gtm/zzcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzbx;

.field private volatile zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/util/Set;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    return-void
.end method

.method public static final zzc()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzG:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final zzd()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzm:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final zze()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzj:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final zzf()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzy:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final zzg()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzp:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final zzh()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzo:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzr:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final zzj()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzs:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final zzk()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzq:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final zzl()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzb:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza()Ljava/util/Set;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzB:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzd:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzc:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, ","

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    .line 4
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 6
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzc:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzd:Ljava/util/Set;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzd:Ljava/util/Set;

    return-object v0
.end method

.method public final zzb()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "com.google.android.gms.analytics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzI(Ljava/lang/String;)V

    .line 7
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzb:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
