.class public final Lcom/google/android/gms/internal/gtm/zzni;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zznh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zznh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzni;->zza:Lcom/google/android/gms/internal/gtm/zznh;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v0, p2, v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    .line 5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    if-lt p1, v3, :cond_1

    .line 6
    aget-object p1, p2, v1

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p1, v3, :cond_1

    .line 7
    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 8
    aget-object p1, p2, v1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrh;->zzi()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzri;

    xor-int/2addr v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 11
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 12
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzqz;->zzc()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzni;->zza:Lcom/google/android/gms/internal/gtm/zznh;

    .line 13
    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/gtm/zznh;->zza(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    return-object p1
.end method
