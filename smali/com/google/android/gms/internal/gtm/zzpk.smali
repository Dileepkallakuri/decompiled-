.class public abstract Lcom/google/android/gms/internal/gtm/zzpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/gtm/zzpt;

.field protected final zzb:Lcom/google/android/gms/internal/gtm/zzpp;

.field protected final zzc:Lcom/google/android/gms/common/util/Clock;

.field protected final zzd:Lcom/google/android/gms/internal/gtm/zzgu;

.field private final zze:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/gtm/zzpt;Lcom/google/android/gms/internal/gtm/zzpp;Lcom/google/android/gms/internal/gtm/zzgu;Lcom/google/android/gms/common/util/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzpt;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zza:Lcom/google/android/gms/internal/gtm/zzpt;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zze:I

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzpp;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zzb:Lcom/google/android/gms/internal/gtm/zzpp;

    .line 4
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/util/Clock;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zzc:Lcom/google/android/gms/common/util/Clock;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zzd:Lcom/google/android/gms/internal/gtm/zzgu;

    return-void
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/gtm/zzpv;)V
.end method

.method public final zzb(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zzd:Lcom/google/android/gms/internal/gtm/zzgu;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzgu;->zzd()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zza:Lcom/google/android/gms/internal/gtm/zzpt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const-string p1, "Unknown reason"

    goto :goto_0

    :cond_1
    const-string p1, "Server error"

    goto :goto_0

    :cond_2
    const-string p1, "IOError"

    goto :goto_0

    :cond_3
    const-string p1, "Resource not available"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to fetch the container resource for the container \""

    .line 4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpv;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1, v1}, Lcom/google/android/gms/internal/gtm/zzpv;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzpu;Lcom/google/android/gms/internal/gtm/zzqs;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzpk;->zza(Lcom/google/android/gms/internal/gtm/zzpv;)V

    return-void
.end method

.method public final zzc([B)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zzb:Lcom/google/android/gms/internal/gtm/zzpp;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/gtm/zzpp;->zza([B)Lcom/google/android/gms/internal/gtm/zzpv;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzpi; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Resource data is corrupted"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    move-object v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zzd:Lcom/google/android/gms/internal/gtm/zzgu;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zze:I

    if-nez v3, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzgu;->zze()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzpv;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzb()Lcom/google/android/gms/internal/gtm/zzpu;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpu;->zzc()Lcom/google/android/gms/internal/gtm/zzqj;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzpu;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zza:Lcom/google/android/gms/internal/gtm/zzpt;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/gtm/zzpu;-><init>(Lcom/google/android/gms/internal/gtm/zzph;[BLcom/google/android/gms/internal/gtm/zzqj;J)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzc()Lcom/google/android/gms/internal/gtm/zzqs;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzpv;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zze:I

    .line 9
    invoke-direct {v1, v2, v3, v0, p1}, Lcom/google/android/gms/internal/gtm/zzpv;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzpu;Lcom/google/android/gms/internal/gtm/zzqs;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzpv;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzpk;->zze:I

    .line 6
    invoke-direct {v1, p1, v2, v0, v0}, Lcom/google/android/gms/internal/gtm/zzpv;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzpu;Lcom/google/android/gms/internal/gtm/zzqs;)V

    .line 10
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzpk;->zza(Lcom/google/android/gms/internal/gtm/zzpv;)V

    return-void
.end method
