.class public final Lcom/google/android/gms/internal/gtm/zzgt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzpo;

.field private final zzc:Ljava/util/concurrent/ExecutorService;

.field private final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zze:Lcom/google/android/gms/tagmanager/zzco;

.field private final zzf:Lcom/google/android/gms/tagmanager/zzcf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzpo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzpo;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjn;->zza(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzjp;->zza()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgt;->zza:Landroid/content/Context;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzco;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgt;->zze:Lcom/google/android/gms/tagmanager/zzco;

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzcf;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgt;->zzf:Lcom/google/android/gms/tagmanager/zzcf;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzpo;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgt;->zzb:Lcom/google/android/gms/internal/gtm/zzpo;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgt;->zzc:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgt;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzgs;
    .locals 14

    move-object v0, p0

    move-object v3, p1

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/gtm/zzid;

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zza:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zze:Lcom/google/android/gms/tagmanager/zzco;

    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zzf:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-direct {v6, v1, v2, v4, p1}, Lcom/google/android/gms/internal/gtm/zzid;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;Ljava/lang/String;)V

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzgu;

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zza:Landroid/content/Context;

    .line 2
    invoke-direct {v12, v1, p1}, Lcom/google/android/gms/internal/gtm/zzgu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzgs;

    iget-object v2, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zza:Landroid/content/Context;

    iget-object v7, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zzb:Lcom/google/android/gms/internal/gtm/zzpo;

    iget-object v8, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zzc:Ljava/util/concurrent/ExecutorService;

    iget-object v9, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, v0, Lcom/google/android/gms/internal/gtm/zzgt;->zze:Lcom/google/android/gms/tagmanager/zzco;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v11

    move-object v1, v13

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/gtm/zzgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzid;Lcom/google/android/gms/internal/gtm/zzpo;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/gtm/zzgu;)V

    return-object v13
.end method
