.class public Lcom/google/android/gms/internal/gtm/zzbep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field static final zza:Lcom/google/android/gms/internal/gtm/zzbep;

.field public static final synthetic zzb:I = 0x0

.field private static volatile zzc:Z = false

.field private static volatile zzd:Lcom/google/android/gms/internal/gtm/zzbep;


# instance fields
.field private final zze:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbep;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbep;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbep;->zza:Lcom/google/android/gms/internal/gtm/zzbep;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbep;->zze:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbep;->zze:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzbep;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbep;->zzd:Lcom/google/android/gms/internal/gtm/zzbep;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/gtm/zzbep;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzbep;->zzd:Lcom/google/android/gms/internal/gtm/zzbep;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/gtm/zzbep;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzbex;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbep;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbep;->zzd:Lcom/google/android/gms/internal/gtm/zzbep;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/gtm/zzbgs;I)Lcom/google/android/gms/internal/gtm/zzbfd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbep;->zze:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbeo;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbeo;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbfd;

    return-object p1
.end method
