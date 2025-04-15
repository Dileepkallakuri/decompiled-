.class final Lcom/google/android/gms/internal/gtm/zzkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzrc;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzks;Lcom/google/android/gms/internal/gtm/zzrc;Lcom/google/android/gms/internal/gtm/zzie;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzkp;->zza:Lcom/google/android/gms/internal/gtm/zzrc;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzkp;->zzb:Lcom/google/android/gms/internal/gtm/zzie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqz;

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzqz;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzkp;->zza:Lcom/google/android/gms/internal/gtm/zzrc;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrc;->zzi()Lcom/google/android/gms/internal/gtm/zzjw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzkp;->zzb:Lcom/google/android/gms/internal/gtm/zzie;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/internal/gtm/zzqz;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzjw;->zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    .line 3
    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method
