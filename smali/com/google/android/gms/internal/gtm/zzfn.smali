.class final Lcom/google/android/gms/internal/gtm/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzdb;


# instance fields
.field final synthetic zza:Ljava/lang/Runnable;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzfp;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfn;->zzb:Lcom/google/android/gms/internal/gtm/zzfp;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzfn;->zza:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfn;->zzb:Lcom/google/android/gms/internal/gtm/zzfp;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzfp;->zzb(Lcom/google/android/gms/internal/gtm/zzfp;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfn;->zza:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
