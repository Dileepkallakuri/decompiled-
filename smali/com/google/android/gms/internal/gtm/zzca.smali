.class final Lcom/google/android/gms/internal/gtm/zzca;
.super Lcom/google/android/gms/internal/gtm/zzcy;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzce;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzce;Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzca;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gtm/zzcy;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzca;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzg()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Inactivity, disconnecting from device AnalyticsService"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzc()V

    return-void
.end method
