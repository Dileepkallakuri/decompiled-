.class final Lcom/google/android/gms/internal/gtm/zziu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Landroid/os/Bundle;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:J

.field final synthetic zze:Ljava/lang/String;

.field final synthetic zzf:Lcom/google/android/gms/internal/gtm/zziv;

.field private zzg:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zziv;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzf:Lcom/google/android/gms/internal/gtm/zziv;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zziu;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzb:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzd:J

    iput-object p7, p0, Lcom/google/android/gms/internal/gtm/zziu;->zze:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzg:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzf:Lcom/google/android/gms/internal/gtm/zziv;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zziv;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzg(Lcom/google/android/gms/internal/gtm/zzjh;)Lcom/google/android/gms/internal/gtm/zzjq;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zziu;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzb:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzc:Ljava/lang/String;

    iget-wide v7, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzd:J

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/gtm/zzjq;->zzb(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zza:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zze:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzb:Landroid/os/Bundle;

    aput-object v1, v0, v4

    const-string v1, "Container failed to load: skipping event listener by ignoring the event: name = %s, origin = %s, params = %s."

    .line 6
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzf:Lcom/google/android/gms/internal/gtm/zziv;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zziv;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzb(Lcom/google/android/gms/internal/gtm/zzjh;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzgv;->zzc(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 1
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzg:Z

    if-nez v0, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zza:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zze:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzb:Landroid/os/Bundle;

    aput-object v1, v0, v4

    const-string v1, "Container not loaded yet: deferring event listener by enqueuing the event: name = %s, origin = %s, params = %s."

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziu;->zzf:Lcom/google/android/gms/internal/gtm/zziv;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zziv;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzi(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/Queue;

    move-result-object v0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    const-string v0, "Invalid state - not expecting to see a deferred event during container loading."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-void
.end method
