.class final Lcom/google/android/gms/internal/gtm/zzgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/gtm/zzpl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzgs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzgm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zza(Lcom/google/android/gms/internal/gtm/zzgs;)I

    move-result v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    new-instance v9, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzn(Lcom/google/android/gms/internal/gtm/zzgs;Z)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhv;->zza()Lcom/google/android/gms/internal/gtm/zzhv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzhv;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zze(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzgu;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgu;->zzf()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzn(Lcom/google/android/gms/internal/gtm/zzgs;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzu(Lcom/google/android/gms/internal/gtm/zzgs;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x2

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzh(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzpo;

    move-result-object v5

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzk(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzj(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zze(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzgu;

    move-result-object v11

    move-object v10, p0

    .line 12
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/gtm/zzpo;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzpv;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzm(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzgr;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzgr;-><init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzpv;)V

    .line 2
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgn;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzm(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzgl;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/gtm/zzgl;-><init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzgk;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
