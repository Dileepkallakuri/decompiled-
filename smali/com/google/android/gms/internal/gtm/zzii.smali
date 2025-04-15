.class final Lcom/google/android/gms/internal/gtm/zzii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzin;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzii;->zza:Lcom/google/android/gms/internal/gtm/zzin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzii;->zza:Lcom/google/android/gms/internal/gtm/zzin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzin;->zzh(Lcom/google/android/gms/internal/gtm/zzin;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzii;->zza:Lcom/google/android/gms/internal/gtm/zzin;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzin;->zzd(Lcom/google/android/gms/internal/gtm/zzin;)Lcom/google/android/gms/internal/gtm/zzhg;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzhg;->zza()V

    return-void
.end method
