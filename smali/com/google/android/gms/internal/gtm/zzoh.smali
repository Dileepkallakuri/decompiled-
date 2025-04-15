.class public final Lcom/google/android/gms/internal/gtm/zzoh;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    return-void
.end method

.method private static final zzb(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final zzc(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    const-string p1, "\\\\"

    const-string v0, "\\"

    .line 1
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Character;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :try_start_0
    const-string p1, "UTF-8"

    .line 5
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\+"

    const-string v0, "%20"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 9

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v2, p2, v1

    if-le v0, p1, :cond_1

    .line 4
    aget-object v3, p2, p1

    goto :goto_1

    .line 6
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    :goto_1
    const-string v4, ""

    const/4 v5, 0x2

    if-le v0, v5, :cond_3

    .line 5
    aget-object v6, p2, v5

    sget-object v7, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    :goto_2
    move-object v6, v4

    :goto_3
    const-string v7, "="

    const/4 v8, 0x3

    if-le v0, v8, :cond_5

    .line 7
    aget-object p2, p2, v8

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p2, v0, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v7

    .line 7
    :cond_5
    :goto_4
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    const/4 v0, 0x0

    if-eq v3, p2, :cond_8

    .line 9
    instance-of p2, v3, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const-string p2, "url"

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzqz;->zzc()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move v5, p1

    goto :goto_5

    :cond_6
    const-string p2, "backslash"

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzqz;->zzc()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance v0, Ljava/util/HashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/gtm/zzoh;->zzb(Ljava/util/Set;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/gtm/zzoh;->zzb(Ljava/util/Set;Ljava/lang/String;)V

    const/16 p2, 0x5c

    .line 15
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 33
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_8
    move v5, v1

    .line 10
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzrg;

    if-eqz v3, :cond_a

    .line 18
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzqz;

    if-nez p1, :cond_9

    .line 19
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/internal/gtm/zzoh;->zzc(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_6

    .line 22
    :cond_a
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v3, :cond_c

    .line 23
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrh;->zzi()Ljava/util/Map;

    move-result-object v2

    .line 24
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez p1, :cond_b

    .line 25
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_b
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {v4, v5, v0}, Lcom/google/android/gms/internal/gtm/zzoh;->zzc(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/internal/gtm/zzoh;->zzc(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_7

    .line 30
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1, v5, v0}, Lcom/google/android/gms/internal/gtm/zzoh;->zzc(Ljava/lang/String;ILjava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_d
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
