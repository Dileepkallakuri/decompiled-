.class final Lcom/google/android/gms/internal/gtm/zzjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzgb;->zza()Lcom/google/android/gms/internal/gtm/zzfy;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzjo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzjo;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzjp;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static bridge synthetic zza()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzjp;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
