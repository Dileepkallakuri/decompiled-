.class public final Lcom/google/android/gms/internal/gtm/zzki;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v0, p2, v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrg;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, -0x1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzm(I)V

    :goto_1
    array-length p1, p2

    if-ge v1, p1, :cond_1

    .line 7
    aget-object p1, p2, v1

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzl(ILcom/google/android/gms/internal/gtm/zzqz;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
