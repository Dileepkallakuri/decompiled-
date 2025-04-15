.class final Lcom/google/android/gms/internal/gtm/zzjf;
.super Lcom/google/android/gms/internal/gtm/zzhi;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzjh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzjh;Lcom/google/android/gms/internal/gtm/zzje;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjf;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzhi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjf;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzj(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzjd;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzjd;-><init>(Lcom/google/android/gms/internal/gtm/zzjf;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
