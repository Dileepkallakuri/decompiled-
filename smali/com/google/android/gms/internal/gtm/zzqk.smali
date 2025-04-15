.class public final Lcom/google/android/gms/internal/gtm/zzqk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Ljava/util/Map;

.field private zzb:Lcom/google/android/gms/internal/gtm/zzqv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqk;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqv;)Lcom/google/android/gms/internal/gtm/zzqk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqk;->zza:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzqv;)Lcom/google/android/gms/internal/gtm/zzqk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqk;->zzb:Lcom/google/android/gms/internal/gtm/zzqv;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzqm;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqk;->zza:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqk;->zzb:Lcom/google/android/gms/internal/gtm/zzqv;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzqm;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzqv;Lcom/google/android/gms/internal/gtm/zzql;)V

    return-object v0
.end method
