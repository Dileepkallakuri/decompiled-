.class final Lcom/google/android/gms/internal/firebase-auth-api/zzal;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzam;
.source "com.google.firebase:firebase-auth@@22.0.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzam;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzam;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzam;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzu;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzam;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzam;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzam;->zzf(II)Lcom/google/android/gms/internal/firebase-auth-api/zzam;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/firebase-auth-api/zzam;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzu;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzam;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzam;->zzf(II)Lcom/google/android/gms/internal/firebase-auth-api/zzam;

    move-result-object p1

    return-object p1
.end method
