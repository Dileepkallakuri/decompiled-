.class public final Lcom/google/android/gms/internal/gtm/zzlr;
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
    .locals 4

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget-object v2, p2, v2

    .line 5
    instance-of v3, v2, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Illegal InternalType found in CreateObject."

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_1
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrh;-><init>(Ljava/util/Map;)V

    return-object p2
.end method
