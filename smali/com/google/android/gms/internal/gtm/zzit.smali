.class final Lcom/google/android/gms/internal/gtm/zzit;
.super Lcom/google/android/gms/tagmanager/zzck;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzjh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzit;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzck;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzit;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzj(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzis;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+gtm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/gtm/zzis;-><init>(Lcom/google/android/gms/internal/gtm/zzit;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
