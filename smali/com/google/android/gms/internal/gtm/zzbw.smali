.class final Lcom/google/android/gms/internal/gtm/zzbw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzbx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbw;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbw;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzn()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "Job execution failed"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
