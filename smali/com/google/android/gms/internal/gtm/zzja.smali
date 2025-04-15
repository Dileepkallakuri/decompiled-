.class final Lcom/google/android/gms/internal/gtm/zzja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzjh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzja;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzja;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzj(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zziz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zziz;-><init>(Lcom/google/android/gms/internal/gtm/zzja;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
