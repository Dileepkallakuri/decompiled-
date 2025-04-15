.class public final Lcom/google/android/gms/internal/gtm/zzrg;
.super Lcom/google/android/gms/internal/gtm/zzqz;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field private final zzc:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzjz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzjz;-><init>()V

    const-string v2, "concat"

    .line 2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzka;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzka;-><init>()V

    const-string v2, "every"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkb;-><init>()V

    const-string v2, "filter"

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkc;-><init>()V

    const-string v2, "forEach"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkd;-><init>()V

    const-string v2, "indexOf"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hasOwnProperty"

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzlx;->zza:Lcom/google/android/gms/internal/gtm/zzlx;

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzke;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzke;-><init>()V

    const-string v2, "join"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkf;-><init>()V

    const-string v2, "lastIndexOf"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkg;-><init>()V

    const-string v2, "map"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkh;-><init>()V

    const-string v2, "pop"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzki;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzki;-><init>()V

    const-string v2, "push"

    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkj;-><init>()V

    const-string v2, "reduce"

    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkk;-><init>()V

    const-string v2, "reduceRight"

    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkl;-><init>()V

    const-string v2, "reverse"

    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkm;-><init>()V

    const-string v2, "shift"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkn;-><init>()V

    const-string v2, "slice"

    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzko;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzko;-><init>()V

    const-string v2, "some"

    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzks;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzks;-><init>()V

    const-string v2, "sort"

    .line 19
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzkt;-><init>()V

    const-string v2, "splice"

    .line 20
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzmz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzmz;-><init>()V

    const-string v2, "toString"

    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzku;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzku;-><init>()V

    const-string v2, "unshift"

    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrg;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqz;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/gtm/zzrg;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_4

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zzrg;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrg;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_3

    :cond_1
    move v3, v0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    move v0, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v2

    :goto_4
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzjw;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqz;->zzg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrg;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzjw;

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native Method "

    .line 3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not defined for type ListWrapper."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic zzc()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final zze()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzre;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzre;-><init>(Lcom/google/android/gms/internal/gtm/zzrg;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzqz;->zzd()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzrf;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzrf;-><init>(Lcom/google/android/gms/internal/gtm/zzrg;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public final zzg(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrg;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzi(I)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 1

    if-ltz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqz;

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    :cond_1
    return-object p1

    .line 1
    :cond_2
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method

.method public final zzk()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final zzl(ILcom/google/android/gms/internal/gtm/zzqz;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzrg;->zzm(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final zzm(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid array length"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final zzn(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrg;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
