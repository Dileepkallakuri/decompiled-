.class public final Lcom/google/android/gms/internal/gtm/zzpt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private zza:Lcom/google/android/gms/internal/gtm/zzph;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/gtm/zzph;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpt;->zza:Lcom/google/android/gms/internal/gtm/zzph;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzph;)Lcom/google/android/gms/internal/gtm/zzpt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpt;->zza:Lcom/google/android/gms/internal/gtm/zzph;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpt;->zza:Lcom/google/android/gms/internal/gtm/zzph;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
