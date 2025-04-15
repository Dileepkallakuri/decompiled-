.class final Lcom/google/android/gms/internal/gtm/zzgi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzgs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzgs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgi;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgi;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zza(Lcom/google/android/gms/internal/gtm/zzgs;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgi;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzf(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzic;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzic;->zze()V

    :cond_0
    return-void
.end method
