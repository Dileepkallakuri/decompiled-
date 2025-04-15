.class final Lcom/google/android/gms/internal/gtm/zzgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/gtm/zzpl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzgs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzgp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgq;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgq;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zza(Lcom/google/android/gms/internal/gtm/zzgs;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhv;->zza()Lcom/google/android/gms/internal/gtm/zzhv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgq;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzhv;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgq;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Refreshing container "

    .line 3
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgq;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzh(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzpo;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzk(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzj(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zze(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzgu;

    move-result-object v9

    move-object v8, p0

    .line 6
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/gtm/zzpo;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzpv;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgq;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Refreshed container "

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Reinitializing runtime..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgq;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzm(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzgr;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzgr;-><init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzpv;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgq;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzgs;->zze(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzgu;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzgu;->zzc()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzr(Lcom/google/android/gms/internal/gtm/zzgs;J)V

    return-void
.end method
