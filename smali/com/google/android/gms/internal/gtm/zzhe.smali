.class final Lcom/google/android/gms/internal/gtm/zzhe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzhd;

.field final synthetic zzb:J

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Ljava/lang/String;

.field final synthetic zzf:Ljava/util/Map;

.field final synthetic zzg:Ljava/lang/String;

.field final synthetic zzh:Lcom/google/android/gms/internal/gtm/zzhf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzhf;Lcom/google/android/gms/internal/gtm/zzhd;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzh:Lcom/google/android/gms/internal/gtm/zzhf;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zza:Lcom/google/android/gms/internal/gtm/zzhd;

    iput-wide p3, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzb:J

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zze:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzf:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzh:Lcom/google/android/gms/internal/gtm/zzhf;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzhf;->zze(Lcom/google/android/gms/internal/gtm/zzhf;)Lcom/google/android/gms/internal/gtm/zzhg;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzin;->zzf()Lcom/google/android/gms/internal/gtm/zzin;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzh:Lcom/google/android/gms/internal/gtm/zzhf;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzhf;->zzc(Lcom/google/android/gms/internal/gtm/zzhf;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zza:Lcom/google/android/gms/internal/gtm/zzhd;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzin;->zzj(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzhd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzh:Lcom/google/android/gms/internal/gtm/zzhf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzin;->zze()Lcom/google/android/gms/internal/gtm/zzhg;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzhf;->zzf(Lcom/google/android/gms/internal/gtm/zzhf;Lcom/google/android/gms/internal/gtm/zzhg;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzh:Lcom/google/android/gms/internal/gtm/zzhf;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzhf;->zze(Lcom/google/android/gms/internal/gtm/zzhf;)Lcom/google/android/gms/internal/gtm/zzhg;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzb:J

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zze:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzf:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zzhe;->zzg:Ljava/lang/String;

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/gtm/zzhg;->zzb(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
