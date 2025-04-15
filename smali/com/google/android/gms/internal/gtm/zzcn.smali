.class final Lcom/google/android/gms/internal/gtm/zzcn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Lcom/google/android/gms/internal/gtm/zzcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Lcom/google/android/gms/internal/gtm/zzcp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcp;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
