.class public final Lcom/google/android/gms/internal/gtm/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Ljava/lang/Integer;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/List;

.field private zzd:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzc:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzd:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zza:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/gtm/zzqt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzc:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/gtm/zzqt;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzd:Z

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzqv;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zza:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzb:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqv;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zza:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzb:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzc:Ljava/util/List;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/gtm/zzqt;->zzd:Z

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zzqv;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/util/List;ZLcom/google/android/gms/internal/gtm/zzqu;)V

    return-object v0
.end method
