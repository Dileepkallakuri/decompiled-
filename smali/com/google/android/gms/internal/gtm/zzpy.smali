.class final Lcom/google/android/gms/internal/gtm/zzpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzpk;

.field final synthetic zzd:Lcom/google/android/gms/internal/gtm/zzqa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzqa;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpy;->zzd:Lcom/google/android/gms/internal/gtm/zzqa;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzpy;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzpy;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzpy;->zzc:Lcom/google/android/gms/internal/gtm/zzpk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpy;->zzd:Lcom/google/android/gms/internal/gtm/zzqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpy;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzpy;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzpy;->zzc:Lcom/google/android/gms/internal/gtm/zzpk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzqa;->zzd(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V

    return-void
.end method
