.class public final Lcom/google/android/gms/internal/gtm/zzgx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzhc;


# static fields
.field private static zza:Lcom/google/android/gms/internal/gtm/zzgx;

.field private static final zzb:Ljava/lang/Object;

.field private static final zzc:Ljava/util/Set;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/gtm/zzhd;

.field private final zze:Lcom/google/android/gms/internal/gtm/zzif;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzgx;->zzb:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "POST"

    const-string v2, "PUT"

    const-string v3, "GET"

    const-string v4, "HEAD"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzgx;->zzc:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzhf;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzhf;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzif;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzif;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgx;->zzd:Lcom/google/android/gms/internal/gtm/zzhd;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgx;->zze:Lcom/google/android/gms/internal/gtm/zzif;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzhc;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzgx;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzgx;->zza:Lcom/google/android/gms/internal/gtm/zzgx;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzgx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzgx;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzgx;->zza:Lcom/google/android/gms/internal/gtm/zzgx;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzgx;->zza:Lcom/google/android/gms/internal/gtm/zzgx;

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzgx;->zzc:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const-string p2, "Unsupport http method %s. Drop the hit."

    .line 5
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhv;->zza()Lcom/google/android/gms/internal/gtm/zzhv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzhv;->zzd()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgx;->zze:Lcom/google/android/gms/internal/gtm/zzif;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzif;->zza()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "Too many hits sent too quickly (rate throttled)."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgx;->zzd:Lcom/google/android/gms/internal/gtm/zzhd;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 3
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/gtm/zzhd;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return v0
.end method
