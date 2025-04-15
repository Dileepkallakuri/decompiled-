.class final Lcom/google/android/gms/internal/gtm/zziz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziz;->zza:Lcom/google/android/gms/internal/gtm/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "App\'s UI deactivated. Dispatching hits."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziz;->zza:Lcom/google/android/gms/internal/gtm/zzja;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzja;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzg(Lcom/google/android/gms/internal/gtm/zzjh;)Lcom/google/android/gms/internal/gtm/zzjq;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzjq;->zza()V

    return-void
.end method
