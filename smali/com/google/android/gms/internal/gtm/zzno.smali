.class public final Lcom/google/android/gms/internal/gtm/zzno;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzib;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzib;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzno;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzno;->zzb:Lcom/google/android/gms/internal/gtm/zzib;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 5

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const-string v1, ""

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    .line 2
    aget-object v3, p2, v2

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzno;->zzb:Lcom/google/android/gms/internal/gtm/zzib;

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/gtm/zzib;->zza()Lcom/google/android/gms/internal/gtm/zzgz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzgz;->zzd()Ljava/util/Map;

    move-result-object v3

    const-string v4, "_ldl"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v3

    .line 7
    instance-of v4, v3, Lcom/google/android/gms/internal/gtm/zzrk;

    if-nez v4, :cond_2

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_2
    check-cast v3, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v3

    const-string v4, "conv"

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzhn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 12
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    const/4 v2, 0x0

    if-le v0, p1, :cond_5

    .line 13
    aget-object p1, p2, p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p1, p2, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_5
    :goto_0
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/gtm/zzhn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 16
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p2

    .line 3
    :cond_7
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
