.class public final Lcom/google/android/gms/internal/gtm/zzpd;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Ljava/util/Set;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/gtm/zzhc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
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

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzpd;->zza:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzhc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpd;->zzb:Lcom/google/android/gms/internal/gtm/zzhc;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 12

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v0, p2, v1

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzqz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 7
    aget-object v2, p2, v1

    const-string v3, "method"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzqz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    const-string v4, "GET"

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 8
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    .line 9
    :cond_1
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 10
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzpd;->zza:Ljava/util/Set;

    .line 11
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 12
    aget-object v2, p2, v1

    const-string v3, "uniqueId"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzqz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v2, v3, :cond_3

    .line 13
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, p1

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v5, 0x0

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v2, v3, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_4

    :cond_5
    :goto_3
    move-object v9, v5

    .line 15
    :goto_4
    aget-object v2, p2, v1

    const-string v3, "headers"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzqz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v2, v3, :cond_7

    .line 16
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, v1

    goto :goto_6

    :cond_7
    :goto_5
    move v3, p1

    :goto_6
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    new-instance v3, Ljava/util/HashMap;

    .line 17
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v2, v6, :cond_8

    move-object v10, v5

    goto :goto_8

    .line 18
    :cond_8
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrh;->zzi()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 20
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzqz;

    .line 21
    instance-of v10, v6, Lcom/google/android/gms/internal/gtm/zzrk;

    if-nez v10, :cond_9

    new-array v6, p1, [Ljava/lang/Object;

    aput-object v7, v6, v1

    const-string v7, "Ignore the non-string value of header key %s."

    .line 22
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    goto :goto_7

    .line 23
    :cond_9
    check-cast v6, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    move-object v10, v3

    .line 24
    :goto_8
    aget-object p2, p2, v1

    const-string v2, "body"

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/gtm/zzqz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p2, v2, :cond_c

    .line 25
    instance-of v2, p2, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    move v2, v1

    goto :goto_a

    :cond_c
    :goto_9
    move v2, p1

    :goto_a
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p2, v2, :cond_d

    goto :goto_b

    .line 26
    :cond_d
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v5

    :goto_b
    move-object p2, v5

    .line 27
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x2

    if-nez v2, :cond_e

    const-string v2, "HEAD"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    if-eqz p2, :cond_f

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v8, v2, v1

    aput-object p2, v2, p1

    const-string v3, "Body of %s hit will be ignored: %s."

    .line 28
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzpd;->zzb:Lcom/google/android/gms/internal/gtm/zzhc;

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, p2

    .line 29
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/gtm/zzhc;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object v8, v2, p1

    aput-object v9, v2, v11

    const/4 p1, 0x3

    aput-object v10, v2, p1

    const/4 p1, 0x4

    aput-object p2, v2, p1

    const-string p1, "QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s"

    .line 30
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
