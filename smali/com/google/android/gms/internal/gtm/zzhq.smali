.class final Lcom/google/android/gms/internal/gtm/zzhq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzip;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzhs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzhs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhq;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/gtm/zzhb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhq;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzhs;->zzk(Lcom/google/android/gms/internal/gtm/zzhs;J)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Permanent failure dispatching hitId: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzhb;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzhb;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhq;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v1

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhq;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzhs;->zze(Lcom/google/android/gms/internal/gtm/zzhs;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzhs;->zzl(Lcom/google/android/gms/internal/gtm/zzhs;JJ)V

    return-void

    :cond_0
    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzhq;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzhs;->zze(Lcom/google/android/gms/internal/gtm/zzhs;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhq;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzhs;->zzk(Lcom/google/android/gms/internal/gtm/zzhs;J)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Giving up on failed hitId: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
