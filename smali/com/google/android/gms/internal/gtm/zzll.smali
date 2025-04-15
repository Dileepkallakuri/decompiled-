.class public final Lcom/google/android/gms/internal/gtm/zzll;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const/4 v1, 0x2

    .line 4
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 5
    aget-object v2, p2, v3

    .line 6
    aget-object v0, p2, v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 7
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzqz;->zzh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzqz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v1

    .line 10
    instance-of v2, v1, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v2, :cond_1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrc;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrc;->zzi()Lcom/google/android/gms/internal/gtm/zzjw;

    move-result-object v0

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzjw;->zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Apply TypeError: "

    .line 14
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a function"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzqz;->zzg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzqz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzjw;

    move-result-object v0

    .line 17
    invoke-interface {p2, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/internal/gtm/zzqz;

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzjw;->zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Apply TypeError: object has no "

    .line 20
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " property"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
