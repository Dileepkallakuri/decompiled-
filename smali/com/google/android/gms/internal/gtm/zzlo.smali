.class public final Lcom/google/android/gms/internal/gtm/zzlo;
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
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object p2, p2, v2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzqz;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzrd;->zzc:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v0, v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrd;->zzj()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    return-object v0

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
