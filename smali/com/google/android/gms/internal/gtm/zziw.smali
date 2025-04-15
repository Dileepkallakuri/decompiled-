.class final Lcom/google/android/gms/internal/gtm/zziw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzjh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziw;->zzc:Lcom/google/android/gms/internal/gtm/zzjh;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zziw;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zziw;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziw;->zza:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting to load container "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziw;->zzc:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "Unexpected state - container loading already initiated."

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzb(Lcom/google/android/gms/internal/gtm/zzjh;)Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzgv;->zzc(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzl(Lcom/google/android/gms/internal/gtm/zzjh;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziw;->zzc:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzg(Lcom/google/android/gms/internal/gtm/zzjh;)Lcom/google/android/gms/internal/gtm/zzjq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zziw;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zziw;->zzb:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzjf;

    const/4 v5, 0x0

    .line 4
    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/gtm/zzjf;-><init>(Lcom/google/android/gms/internal/gtm/zzjh;Lcom/google/android/gms/internal/gtm/zzje;)V

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/gtm/zzjq;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V

    return-void
.end method
