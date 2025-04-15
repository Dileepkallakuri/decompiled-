.class final Lcom/google/android/gms/internal/gtm/zzbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbr;->zza:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbr;->zza:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzb(Lcom/google/android/gms/internal/gtm/zzbs;)Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcm;->zzab()V

    const/4 v0, 0x0

    return-object v0
.end method
