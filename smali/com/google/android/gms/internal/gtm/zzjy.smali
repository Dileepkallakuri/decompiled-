.class public abstract Lcom/google/android/gms/internal/gtm/zzjy;
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
.method protected varargs abstract zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
.end method

.method public final varargs zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    array-length v2, p2

    new-array v2, v2, [Lcom/google/android/gms/internal/gtm/zzqz;

    move v3, v1

    .line 4
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_6

    .line 5
    aget-object v4, p2, v3

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 6
    aget-object v4, p2, v3

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v4, v5, :cond_2

    move v4, v0

    goto :goto_3

    :cond_2
    move v4, v1

    :goto_3
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 7
    aget-object v4, p2, v3

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzrd;->zzc:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v4, v5, :cond_3

    move v4, v0

    goto :goto_4

    :cond_3
    move v4, v1

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 8
    aget-object v4, p2, v3

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v4

    aput-object v4, v2, v3

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 10
    aget-object v4, v2, v3

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v4, v5, :cond_4

    move v4, v0

    goto :goto_5

    :cond_4
    move v4, v1

    :goto_5
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 11
    aget-object v4, v2, v3

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzrd;->zzc:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v4, v5, :cond_5

    move v4, v0

    goto :goto_6

    :cond_5
    move v4, v1

    :goto_6
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzjy;->zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    move v0, v1

    .line 13
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    return-object p1
.end method
