.class public final Lcom/google/android/gms/internal/gtm/zzpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/Status;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzpu;

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzqs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzpu;Lcom/google/android/gms/internal/gtm/zzqs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zza:Lcom/google/android/gms/common/api/Status;

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zzc:Lcom/google/android/gms/internal/gtm/zzpu;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zzd:Lcom/google/android/gms/internal/gtm/zzqs;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zza:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zzb:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/gtm/zzpu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zzc:Lcom/google/android/gms/internal/gtm/zzpu;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzqs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zzd:Lcom/google/android/gms/internal/gtm/zzqs;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzpv;->zzb:I

    if-nez v0, :cond_0

    const-string v0, "Network"

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Saved file on disk"

    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "Default resource"

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource source is unknown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
