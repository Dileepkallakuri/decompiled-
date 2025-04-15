.class final Lcom/google/android/gms/internal/gtm/zzre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzrg;

.field private zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzrg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzre;->zza:Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzre;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzre;->zzb:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzre;->zza:Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzj(Lcom/google/android/gms/internal/gtm/zzrg;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzre;->zza:Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzj(Lcom/google/android/gms/internal/gtm/zzrg;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzre;->zza()Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zza()Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzre;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzre;->zza:Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzj(Lcom/google/android/gms/internal/gtm/zzrg;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzre;->zzb:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzre;->zza:Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzj(Lcom/google/android/gms/internal/gtm/zzrg;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzre;->zza:Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzj(Lcom/google/android/gms/internal/gtm/zzrg;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzre;->zzb:I

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzre;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/gtm/zzre;->zzb:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 6
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
