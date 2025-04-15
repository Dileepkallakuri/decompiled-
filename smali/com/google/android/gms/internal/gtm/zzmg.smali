.class public final Lcom/google/android/gms/internal/gtm/zzmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzjw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2
    array-length v2, p2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x3

    .line 3
    aget-object v2, p2, v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 5
    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    .line 6
    aget-object v3, p2, v3

    .line 7
    instance-of v4, v3, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 8
    check-cast v3, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzra;->zzi()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzf(Lcom/google/android/gms/internal/gtm/zzie;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzrd;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v3, v4, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzrd;->zzj()Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    .line 10
    :cond_4
    :goto_2
    aget-object v3, p2, v1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 11
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzf(Lcom/google/android/gms/internal/gtm/zzie;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzrd;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v3, v4, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzrd;->zzj()Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v3

    .line 12
    :cond_6
    aget-object v3, p2, v0

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
