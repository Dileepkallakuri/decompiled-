.class final Lcom/google/android/gms/internal/gtm/zzin;
.super Lcom/google/android/gms/internal/gtm/zzig;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/internal/gtm/zzin;


# instance fields
.field private zzc:Landroid/content/Context;

.field private zzd:Lcom/google/android/gms/internal/gtm/zzhg;

.field private volatile zze:Lcom/google/android/gms/internal/gtm/zzhd;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/gtm/zzij;

.field private zzk:Lcom/google/android/gms/internal/gtm/zzhp;

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/gtm/zzih;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzin;->zza:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzig;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzf:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzi:Z

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzih;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzih;-><init>(Lcom/google/android/gms/internal/gtm/zzin;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzm:Lcom/google/android/gms/internal/gtm/zzih;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzl:Z

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/gtm/zzin;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/gtm/zzin;)Lcom/google/android/gms/internal/gtm/zzhg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzd:Lcom/google/android/gms/internal/gtm/zzhg;

    return-object p0
.end method

.method public static zzf()Lcom/google/android/gms/internal/gtm/zzin;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzin;->zzb:Lcom/google/android/gms/internal/gtm/zzin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzin;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzin;->zzb:Lcom/google/android/gms/internal/gtm/zzin;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzin;->zzb:Lcom/google/android/gms/internal/gtm/zzin;

    return-object v0
.end method

.method static bridge synthetic zzg()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzin;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/gtm/zzin;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzh:Z

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/gtm/zzin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzi:Z

    return p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/gtm/zzin;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzin;->zzn()Z

    move-result p0

    return p0
.end method

.method private final zzn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzl:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzi:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzin;->zzn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzj:Lcom/google/android/gms/internal/gtm/zzij;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzij;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzl:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzin;->zzk(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zze()Lcom/google/android/gms/internal/gtm/zzhg;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzd:Lcom/google/android/gms/internal/gtm/zzhg;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzc:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzhs;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzm:Lcom/google/android/gms/internal/gtm/zzih;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzc:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/gtm/zzhs;-><init>(Lcom/google/android/gms/internal/gtm/zzih;Landroid/content/Context;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzd:Lcom/google/android/gms/internal/gtm/zzhg;

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzj:Lcom/google/android/gms/internal/gtm/zzij;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzim;

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/gtm/zzim;-><init>(Lcom/google/android/gms/internal/gtm/zzin;Lcom/google/android/gms/internal/gtm/zzil;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzj:Lcom/google/android/gms/internal/gtm/zzij;

    const-wide/32 v1, 0x1b7740

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzij;->zzc(J)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzg:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzf:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzin;->zzi()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzf:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzk:Lcom/google/android/gms/internal/gtm/zzhp;

    if-nez v0, :cond_4

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzhp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzhp;-><init>(Lcom/google/android/gms/internal/gtm/zzig;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzk:Lcom/google/android/gms/internal/gtm/zzhp;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzc:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    .line 7
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.google.analytics.RADIO_POWERED"

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzd:Lcom/google/android/gms/internal/gtm/zzhg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzi()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzg:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzf:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzh:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zze:Lcom/google/android/gms/internal/gtm/zzhd;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzii;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzii;-><init>(Lcom/google/android/gms/internal/gtm/zzin;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gtm/zzhd;->zza(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized zzj(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzhd;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzc:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzc:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zze:Lcom/google/android/gms/internal/gtm/zzhd;

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzin;->zze:Lcom/google/android/gms/internal/gtm/zzhd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzk(ZZ)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzin;->zzn()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzl:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzi:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzin;->zzn()Z

    move-result p1

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzin;->zzn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzj:Lcom/google/android/gms/internal/gtm/zzij;

    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzij;->zza()V

    const-string p1, "PowerSaveMode initiated."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzin;->zzj:Lcom/google/android/gms/internal/gtm/zzij;

    const-wide/32 v0, 0x1b7740

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzij;->zzc(J)V

    const-string p1, "PowerSaveMode terminated."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
