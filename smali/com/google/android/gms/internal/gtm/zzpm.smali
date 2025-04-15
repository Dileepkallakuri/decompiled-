.class final Lcom/google/android/gms/internal/gtm/zzpm;
.super Lcom/google/android/gms/internal/gtm/zzpk;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field final synthetic zze:Lcom/google/android/gms/internal/gtm/zzpo;

.field private final zzf:Lcom/google/android/gms/internal/gtm/zzpl;

.field private final zzg:Ljava/util/List;

.field private final zzh:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzpo;ILcom/google/android/gms/internal/gtm/zzpt;Lcom/google/android/gms/internal/gtm/zzpp;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zze:Lcom/google/android/gms/internal/gtm/zzpo;

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzpk;-><init>(ILcom/google/android/gms/internal/gtm/zzpt;Lcom/google/android/gms/internal/gtm/zzpp;Lcom/google/android/gms/internal/gtm/zzgu;Lcom/google/android/gms/common/util/Clock;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zzf:Lcom/google/android/gms/internal/gtm/zzpl;

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zzg:Ljava/util/List;

    iput p6, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zzh:I

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/gtm/zzpv;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_2

    const-string v0, "Container resource successfully loaded from "

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->zza()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzb()Lcom/google/android/gms/internal/gtm/zzpu;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpu;->zzb()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzph;->zzg()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zze:Lcom/google/android/gms/internal/gtm/zzpo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzd(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/gtm/zzpu;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpu;->zzd()[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpu;->zzd()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zze:Lcom/google/android/gms/internal/gtm/zzpo;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzpo;->zza(Lcom/google/android/gms/internal/gtm/zzpo;)Lcom/google/android/gms/internal/gtm/zzqa;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpu;->zzb()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzph;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpu;->zzd()[B

    move-result-object v0

    .line 16
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzqa;->zzg(Ljava/lang/String;[B)V

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zzf:Lcom/google/android/gms/internal/gtm/zzpl;

    .line 17
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzpl;->zza(Lcom/google/android/gms/internal/gtm/zzpv;)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_3

    const-string v1, "FAILURE"

    goto :goto_1

    :cond_3
    const-string v1, "SUCCESS"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot fetch a valid resource from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Response status: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Response source: "

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzb()Lcom/google/android/gms/internal/gtm/zzpu;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpu;->zzd()[B

    move-result-object p1

    array-length p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zze:Lcom/google/android/gms/internal/gtm/zzpo;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zza:Lcom/google/android/gms/internal/gtm/zzpt;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zzg:Ljava/util/List;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zzh:I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zzf:Lcom/google/android/gms/internal/gtm/zzpl;

    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzpm;->zzd:Lcom/google/android/gms/internal/gtm/zzgu;

    .line 13
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/gtm/zzpo;->zzb(Lcom/google/android/gms/internal/gtm/zzpt;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V

    return-void
.end method
