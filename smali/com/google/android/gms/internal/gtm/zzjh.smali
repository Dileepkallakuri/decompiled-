.class public final Lcom/google/android/gms/internal/gtm/zzjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static volatile zzb:Lcom/google/android/gms/internal/gtm/zzjh;

.field private static final zzc:Lcom/google/android/gms/internal/gtm/zzjg;


# instance fields
.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/tagmanager/zzco;

.field private final zzf:Lcom/google/android/gms/tagmanager/zzcf;

.field private final zzg:Lcom/google/android/gms/internal/gtm/zzjq;

.field private final zzh:Ljava/util/concurrent/ExecutorService;

.field private final zzi:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzj:Lcom/google/android/gms/internal/gtm/zzhv;

.field private final zzk:Lcom/google/android/gms/internal/gtm/zzjc;

.field private final zzl:Ljava/lang/Object;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:I

.field private final zzp:Ljava/util/Queue;

.field private volatile zzq:Z

.field private volatile zzr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(gtm-[a-z0-9]{1,10})\\.json"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzjh;->zza:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzir;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzir;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzjh;->zzc:Lcom/google/android/gms/internal/gtm/zzjg;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;Lcom/google/android/gms/internal/gtm/zzjq;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/gtm/zzhv;Lcom/google/android/gms/internal/gtm/zzjc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzl:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzo:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzp:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzr:Z

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zze:Lcom/google/android/gms/tagmanager/zzco;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzf:Lcom/google/android/gms/tagmanager/zzcf;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzg:Lcom/google/android/gms/internal/gtm/zzjq;

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzh:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzi:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p7, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzj:Lcom/google/android/gms/internal/gtm/zzhv;

    iput-object p8, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzk:Lcom/google/android/gms/internal/gtm/zzjc;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/gtm/zzjh;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzo:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/gtm/zzjh;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzd:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/gtm/zzjh;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzp([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/gtm/zzjh;)Lcom/google/android/gms/tagmanager/zzco;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zze:Lcom/google/android/gms/tagmanager/zzco;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/gtm/zzjh;)Lcom/google/android/gms/internal/gtm/zzhv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzj:Lcom/google/android/gms/internal/gtm/zzhv;

    return-object p0
.end method

.method public static zzf(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/internal/gtm/zzjh;
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzjh;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/gtm/zzjh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzjh;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzjh;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzjq;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-direct {v6, p0, v2}, Lcom/google/android/gms/internal/gtm/zzjq;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/stats/ConnectionTracker;)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzjn;->zza(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzjp;->zza()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhv;->zza()Lcom/google/android/gms/internal/gtm/zzhv;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzjc;

    invoke-direct {v10, p0}, Lcom/google/android/gms/internal/gtm/zzjc;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/gtm/zzjh;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;Lcom/google/android/gms/internal/gtm/zzjq;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/gtm/zzhv;Lcom/google/android/gms/internal/gtm/zzjc;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzjh;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    .line 6
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/gtm/zzjh;)Lcom/google/android/gms/internal/gtm/zzjq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzg:Lcom/google/android/gms/internal/gtm/zzjq;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzl:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzp:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzh:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/gtm/zzjh;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzq:Z

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/gtm/zzjh;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzo:I

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/gtm/zzjh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzq:Z

    return p0
.end method

.method private final zzp([Ljava/lang/String;)Landroid/util/Pair;
    .locals 11

    const-string p1, "containers"

    const-string v0, "Looking up container asset."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzm:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzn:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzk:Lcom/google/android/gms/internal/gtm/zzjc;

    .line 2
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/gtm/zzjc;->zzb(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v1

    move v5, v4

    .line 5
    :goto_1
    array-length v6, v3

    const-string v7, "Asset found for container "

    const-string v8, "Extra container asset found, will not be loaded: "

    if-ge v4, v6, :cond_4

    sget-object v6, Lcom/google/android/gms/internal/gtm/zzjh;->zza:Ljava/util/regex/Pattern;

    .line 6
    aget-object v9, v3, v4

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 7
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v5, :cond_2

    .line 8
    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzm:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 9
    aget-object v6, v3, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzn:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzm:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    move v5, v2

    goto :goto_2

    .line 11
    :cond_2
    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 12
    aget-object v8, v3, v4

    aput-object v8, v7, v1

    .line 13
    invoke-virtual {v6}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v2

    const-string v6, "Ignoring container asset %s (does not match %s)"

    .line 14
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v5, :cond_7

    const-string p1, "No container asset found in /assets/containers. Checking top level /assets directory for container assets."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzk:Lcom/google/android/gms/internal/gtm/zzjc;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzjc;->zza()[Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 19
    :goto_3
    array-length v3, p1

    if-ge v1, v3, :cond_7

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzjh;->zza:Ljava/util/regex/Pattern;

    .line 20
    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    .line 22
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzm:Ljava/lang/String;

    .line 23
    aget-object v3, p1, v1

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    const-string v0, "Loading container assets from top level /assets directory. Please move the container asset to /assets/containers"

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    move v0, v2

    goto :goto_4

    .line 26
    :cond_5
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Failed to enumerate assets."

    .line 17
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzm:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzn:Ljava/lang/String;

    .line 27
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Failed to enumerate assets in folder %s"

    .line 3
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzm([Ljava/lang/String;)V
    .locals 8

    const-string p1, "Loading container "

    const-string v0, "Initializing Tag Manager."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzl:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzq:Z

    if-eqz v3, :cond_0

    .line 3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzd:Landroid/content/Context;

    const-string v5, "com.google.android.gms.tagmanager.TagManagerService"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/ComponentName;

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 7
    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 10
    :try_start_3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/gtm/zzjh;->zzp([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 11
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 12
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzh:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zziw;

    invoke-direct {v7, p0, v6, v5, v4}, Lcom/google/android/gms/internal/gtm/zziw;-><init>(Lcom/google/android/gms/internal/gtm/zzjh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-interface {p1, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzi:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zziy;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/gtm/zziy;-><init>(Lcom/google/android/gms/internal/gtm/zzjh;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1388

    .line 16
    invoke-interface {p1, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzr:Z

    if-nez p1, :cond_2

    const-string p1, "Installing Tag Manager event handler."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzr:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zze:Lcom/google/android/gms/tagmanager/zzco;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzit;

    .line 18
    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/gtm/zzit;-><init>(Lcom/google/android/gms/internal/gtm/zzjh;)V

    invoke-interface {p1, v4}, Lcom/google/android/gms/tagmanager/zzco;->zze(Lcom/google/android/gms/tagmanager/zzcl;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_5
    const-string v4, "Error communicating with measurement proxy: "

    .line 24
    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzd:Landroid/content/Context;

    .line 19
    invoke-static {v4, p1, v5}, Lcom/google/android/gms/internal/gtm/zzgv;->zzb(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :goto_0
    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zze:Lcom/google/android/gms/tagmanager/zzco;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zziv;

    .line 20
    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/gtm/zziv;-><init>(Lcom/google/android/gms/internal/gtm/zzjh;)V

    invoke-interface {p1, v4}, Lcom/google/android/gms/tagmanager/zzco;->zzd(Lcom/google/android/gms/tagmanager/zzci;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_7
    const-string v4, "Error communicating with measurement proxy: "

    .line 19
    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzd:Landroid/content/Context;

    .line 21
    invoke-static {v4, p1, v5}, Lcom/google/android/gms/internal/gtm/zzgv;->zzb(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    .line 20
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzd:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzja;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/gtm/zzja;-><init>(Lcom/google/android/gms/internal/gtm/zzjh;)V

    .line 22
    invoke-virtual {p1, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string p1, "Tag Manager event handler installed."

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p1, "Tag Manager\'s event handler WILL NOT be installed (no container loaded)"

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 23
    :cond_2
    :goto_2
    :try_start_8
    iput-boolean v3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzq:Z

    .line 25
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Tag Manager initilization took "

    .line 27
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    return-void

    :catch_2
    :cond_3
    :try_start_9
    const-string p1, "Tag Manager fails to initialize (TagManagerService not enabled in the manifest)"

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iput-boolean v3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzq:Z

    .line 9
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    .line 25
    iput-boolean v3, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzq:Z

    .line 24
    throw p1

    :catchall_1
    move-exception p1

    .line 25
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1
.end method

.method final zzn(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjh;->zzh:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzjb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzjb;-><init>(Lcom/google/android/gms/internal/gtm/zzjh;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
