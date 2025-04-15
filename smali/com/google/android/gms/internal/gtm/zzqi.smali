.class public final Lcom/google/android/gms/internal/gtm/zzqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/Map;

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zza:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zzb:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqi;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzqm;->zza()Ljava/util/Map;

    move-result-object v0

    const-string v1, "instance_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzqv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqv;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzqp;)Lcom/google/android/gms/internal/gtm/zzqi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/gtm/zzqj;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqj;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zzb:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqi;->zzc:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    return-object v0
.end method
