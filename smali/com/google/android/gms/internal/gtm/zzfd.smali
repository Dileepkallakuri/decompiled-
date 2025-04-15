.class public final Lcom/google/android/gms/internal/gtm/zzfd;
.super Lcom/google/android/gms/internal/gtm/zzbu;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field private static zza:Lcom/google/android/gms/internal/gtm/zzfd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzfd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfd;

    return-object v0
.end method

.method protected static final zzf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    const-string v1, "-"

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x2d

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, ""

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "..."

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v1, p0

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_5
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/gtm/zzez;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "no hit data"

    :goto_0
    const-string v0, "Discarding hit. "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzc(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2c

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Discarding hit. "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final zzd()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/gtm/zzfd;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/google/android/gms/internal/gtm/zzfd;->zza:Lcom/google/android/gms/internal/gtm/zzfd;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized zze(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "3"

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzcv;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    const/16 v1, 0x43

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    const/16 v1, 0x63

    :goto_0
    const-string v2, "01VDIWEA?"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbv;->zza:Ljava/lang/String;

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/internal/gtm/zzfd;->zzf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Lcom/google/android/gms/internal/gtm/zzfd;->zzf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p5}, Lcom/google/android/gms/internal/gtm/zzfd;->zzf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p2, p3, p4, p5}, Lcom/google/android/gms/internal/gtm/zzfd;->zzD(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x400

    if-le p2, p3, :cond_1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzt()Lcom/google/android/gms/internal/gtm/zzbx;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzp()Lcom/google/android/gms/internal/gtm/zzfj;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzfj;->zze()Lcom/google/android/gms/internal/gtm/zzfi;

    move-result-object p2

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/gtm/zzfi;->zzc(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
