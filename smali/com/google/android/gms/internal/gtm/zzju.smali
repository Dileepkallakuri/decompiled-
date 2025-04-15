.class public final Lcom/google/android/gms/internal/gtm/zzju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzam:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const-string v3, "contains"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzal:Lcom/google/android/gms/internal/gtm/zza;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const-string v3, "endsWith"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzan:Lcom/google/android/gms/internal/gtm/zza;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const-string v3, "equals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzar:Lcom/google/android/gms/internal/gtm/zza;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const-string v3, "greaterEquals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzaq:Lcom/google/android/gms/internal/gtm/zza;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const-string v3, "greaterThan"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzap:Lcom/google/android/gms/internal/gtm/zza;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const-string v3, "lessEquals"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzao:Lcom/google/android/gms/internal/gtm/zza;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const-string v3, "lessThan"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzaj:Lcom/google/android/gms/internal/gtm/zza;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzb;->zzr:Lcom/google/android/gms/internal/gtm/zzb;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzb;->zzs:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzb;->zzby:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "regex"

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zza;->zzak:Lcom/google/android/gms/internal/gtm/zza;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjt;

    const-string v3, "startsWith"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzjt;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzju;->zza:Ljava/util/Map;

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzie;)Lcom/google/android/gms/internal/gtm/zzri;
    .locals 3

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzju;->zza:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzjt;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzjt;->zzb()[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 7
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "gtmUtils"

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzri;

    const-string v1, "15"

    .line 12
    invoke-direct {p2, v1, p1}, Lcom/google/android/gms/internal/gtm/zzri;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string v1, "mobile"

    .line 15
    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzri;

    const-string v1, "17"

    .line 16
    invoke-direct {p2, v1, p1}, Lcom/google/android/gms/internal/gtm/zzri;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzjt;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzrg;-><init>(Ljava/util/List;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzri;

    const-string p2, "2"

    .line 21
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzri;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Fail to convert "

    .line 2
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to the internal representation"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/gtm/zza;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzju;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzju;->zza:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzjt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzjt;->zza()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
