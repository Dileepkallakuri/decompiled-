.class final Lcom/google/android/gms/internal/gtm/zzgr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzgs;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzpv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzpv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zzb:Lcom/google/android/gms/internal/gtm/zzpv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zzb:Lcom/google/android/gms/internal/gtm/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpv;->zzb()Lcom/google/android/gms/internal/gtm/zzpu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpu;->zzc()Lcom/google/android/gms/internal/gtm/zzqj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zzb:Lcom/google/android/gms/internal/gtm/zzpv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzc()Lcom/google/android/gms/internal/gtm/zzqs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzf(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzic;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzg(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzid;

    move-result-object v4

    .line 2
    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/gtm/zzid;->zza(Lcom/google/android/gms/internal/gtm/zzqj;Lcom/google/android/gms/internal/gtm/zzqs;)Lcom/google/android/gms/internal/gtm/zzic;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzp(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzic;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzq(Lcom/google/android/gms/internal/gtm/zzgs;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Container "

    .line 4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loaded during runtime initialization."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzl(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzl(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzgz;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Evaluating tags for pending event "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzf(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzic;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzic;->zzf(Lcom/google/android/gms/internal/gtm/zzgz;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzo(Lcom/google/android/gms/internal/gtm/zzgs;Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzf(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzic;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzic;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runtime initialized successfully for container "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zzb:Lcom/google/android/gms/internal/gtm/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpv;->zzb()Lcom/google/android/gms/internal/gtm/zzpu;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpu;->zza()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zze(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzgu;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzgu;->zzb()J

    move-result-wide v4

    add-long/2addr v0, v4

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzu(Lcom/google/android/gms/internal/gtm/zzgs;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zzb:Lcom/google/android/gms/internal/gtm/zzpv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzpv;->zza()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzc(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zze(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzgu;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgu;->zza()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzr(Lcom/google/android/gms/internal/gtm/zzgs;J)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgr;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzc(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0xdbba0

    .line 15
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 16
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzr(Lcom/google/android/gms/internal/gtm/zzgs;J)V

    return-void
.end method
