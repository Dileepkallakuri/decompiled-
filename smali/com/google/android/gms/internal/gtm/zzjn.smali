.class final Lcom/google/android/gms/internal/gtm/zzjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static volatile zza:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;
    .locals 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzjn;->zza:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/gtm/zzjn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzjn;->zza:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzha;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzjm;

    invoke-direct {v10}, Lcom/google/android/gms/internal/gtm/zzjm;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/gtm/zzha;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzjn;->zza:Ljava/util/concurrent/ExecutorService;

    .line 2
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzjn;->zza:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
