.class public final Lcom/google/android/gms/internal/gtm/zzpe;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/tagmanager/zzco;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzib;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/internal/gtm/zzib;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpe;->zza:Lcom/google/android/gms/tagmanager/zzco;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzpe;->zzb:Lcom/google/android/gms/internal/gtm/zzib;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 7

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, p1

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-le v0, p1, :cond_2

    .line 4
    aget-object v0, p2, p1

    goto :goto_2

    .line 10
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    .line 4
    :goto_2
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v0, v2, :cond_4

    .line 5
    instance-of v2, v0, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move p1, v1

    :cond_4
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpe;->zzb:Lcom/google/android/gms/internal/gtm/zzib;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzib;->zza()Lcom/google/android/gms/internal/gtm/zzgz;

    move-result-object p1

    .line 7
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v3

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v0, p2, :cond_5

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrh;->zzi()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzrl;->zza(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    :goto_4
    move-object v4, p2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpe;->zza:Lcom/google/android/gms/tagmanager/zzco;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzgz;->currentTimeMillis()J

    move-result-wide v5

    .line 10
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/tagmanager/zzco;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error calling measurement proxy:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 10
    :goto_5
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
