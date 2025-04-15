.class public final Lcom/google/android/gms/internal/gtm/zzqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zza:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzd:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zza:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/gtm/zzqp;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/gtm/zzqp;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzb:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzc:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzqn;->zzd:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzqp;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzqo;)V

    return-object v6
.end method
