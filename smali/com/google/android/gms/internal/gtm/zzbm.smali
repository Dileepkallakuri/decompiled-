.class final Lcom/google/android/gms/internal/gtm/zzbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/Runnable;

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbs;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zzc:Lcom/google/android/gms/internal/gtm/zzbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zzb:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zzc:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzb(Lcom/google/android/gms/internal/gtm/zzbs;)Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzcm;->zzn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbm;->zzb:Ljava/lang/Runnable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
