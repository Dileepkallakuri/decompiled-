.class final Lcom/google/android/gms/internal/gtm/zzpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzpp;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza([B)Lcom/google/android/gms/internal/gtm/zzpv;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzpi;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "runtime"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object p1, v2

    goto :goto_1

    .line 15
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/gtm/zzqq;

    .line 5
    invoke-direct {v3}, Lcom/google/android/gms/internal/gtm/zzqq;-><init>()V

    const-string v4, "resource"

    .line 6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of v4, p1, Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    .line 8
    check-cast p1, Lorg/json/JSONObject;

    const-string v4, "version"

    .line 9
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/gtm/zzqq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqq;

    move p1, v1

    .line 10
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge p1, v4, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 12
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    :cond_1
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzpj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzjv;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqq;->zza(Lcom/google/android/gms/internal/gtm/zzjv;)Lcom/google/android/gms/internal/gtm/zzqq;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzqq;->zzc()Lcom/google/android/gms/internal/gtm/zzqs;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    const-string v0, "The runtime configuration was successfully parsed from the resource"

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zzpi; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzpv;

    sget-object v3, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/google/android/gms/internal/gtm/zzpv;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzpu;Lcom/google/android/gms/internal/gtm/zzqs;)V

    return-object v0

    .line 13
    :cond_5
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "Resource map not found"

    .line 16
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zzpi; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "The resource data is invalid. The runtime  configuration cannot be extracted from the JSON data"

    .line 17
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "The resource data is corrupted. The runtime configuration cannot be extracted from the JSON data"

    .line 18
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "Cannot parse a 0 length byte[]"

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "Cannot parse a null byte[]"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1
.end method
