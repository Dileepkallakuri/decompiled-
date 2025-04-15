.class public final Lcom/google/android/gms/internal/gtm/zzok;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzib;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzib;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzok;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzok;->zzb:Lcom/google/android/gms/internal/gtm/zzib;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 3

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzok;->zzb:Lcom/google/android/gms/internal/gtm/zzib;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzib;->zza()Lcom/google/android/gms/internal/gtm/zzgz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzgz;->zzd()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    if-le v0, p1, :cond_1

    .line 5
    aget-object v1, p2, p1

    .line 6
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    return-object p1
.end method
