.class final Lcom/google/android/gms/internal/gtm/zzcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcd;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcd;Lcom/google/android/gms/internal/gtm/zzfa;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzb:Lcom/google/android/gms/internal/gtm/zzfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzg()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    const-string v1, "Connected to service after a timeout"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzE(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzb:Lcom/google/android/gms/internal/gtm/zzfa;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzi(Lcom/google/android/gms/internal/gtm/zzce;Lcom/google/android/gms/internal/gtm/zzfa;)V

    :cond_0
    return-void
.end method
