.class public final Lcom/google/android/gms/internal/gtm/zznj;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzie;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/gtm/zzie;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zznj;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zznj;->zzb:Lcom/google/android/gms/internal/gtm/zzie;

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    aget-object p2, p2, v2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzpj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzjv;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zznj;->zzb:Lcom/google/android/gms/internal/gtm/zzie;

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/gtm/zzjv;->zzc(Lcom/google/android/gms/internal/gtm/zzie;)V

    new-array v0, v2, [Lcom/google/android/gms/internal/gtm/zzqz;

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/gtm/zzjy;->zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zznj;->zza:I

    if-nez p2, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to convert Custom Pixie to instruction"

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
