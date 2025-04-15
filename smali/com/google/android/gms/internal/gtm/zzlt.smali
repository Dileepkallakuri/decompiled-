.class public final Lcom/google/android/gms/internal/gtm/zzlt;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v0, p2, v3

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzie;->zzf(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 6
    aget-object v1, p2, v2

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 8
    aget-object p2, p2, v2

    .line 9
    instance-of v2, p2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 10
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p2

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzqz;->zze()Ljava/util/Iterator;

    move-result-object v1

    .line 12
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzqz;

    .line 14
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzie;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzf(Lcom/google/android/gms/internal/gtm/zzie;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzrd;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v2, v3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrd;->zzj()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
