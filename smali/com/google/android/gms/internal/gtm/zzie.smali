.class public final Lcom/google/android/gms/internal/gtm/zzie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private zza:Lcom/google/android/gms/internal/gtm/zzie;

.field private zzb:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzie;-><init>(Lcom/google/android/gms/internal/gtm/zzie;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zzie;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzie;->zza:Lcom/google/android/gms/internal/gtm/zzie;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/gtm/zzie;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzie;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzie;-><init>(Lcom/google/android/gms/internal/gtm/zzie;)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqz;

    return-object p1

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zza:Lcom/google/android/gms/internal/gtm/zzie;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzie;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to get a non existent symbol: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzd(Ljava/lang/String;)V
    .locals 1

    const-string p1, "gtm.globals.eventName"

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzie;->zzf(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zza:Lcom/google/android/gms/internal/gtm/zzie;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzie;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zza:Lcom/google/android/gms/internal/gtm/zzie;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzie;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V

    return-void

    .line 1
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to modify a non existent symbol: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final zzf(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zzb:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzie;->zza:Lcom/google/android/gms/internal/gtm/zzie;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzie;->zzf(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
