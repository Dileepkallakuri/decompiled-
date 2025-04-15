.class final Lcom/google/android/gms/internal/gtm/zzpq;
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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzpi;
        }
    .end annotation

    const-string v0, "macros"

    if-eqz p1, :cond_5

    .line 1
    array-length v1, p1

    if-eqz v1, :cond_4

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "resource"

    .line 4
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 6
    check-cast v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzqi;

    .line 7
    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzqi;-><init>()V

    const-string v3, "version"

    .line 8
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzqi;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqi;

    .line 9
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 11
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 12
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "instance_name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "tags"

    .line 13
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/gtm/zzpj;->zzd(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v6, "predicates"

    .line 14
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 15
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/gtm/zzpj;->zzd(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 16
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/gtm/zzpj;->zzd(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzqm;

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/gtm/zzqi;->zza(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqi;

    goto :goto_1

    :cond_1
    const-string v0, "rules"

    .line 19
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v1, v5

    .line 20
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4, v3, v6}, Lcom/google/android/gms/internal/gtm/zzpj;->zzb(Lorg/json/JSONArray;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqp;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/gtm/zzqi;->zzb(Lcom/google/android/gms/internal/gtm/zzqp;)Lcom/google/android/gms/internal/gtm/zzqi;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzqi;->zzd()Lcom/google/android/gms/internal/gtm/zzqj;

    move-result-object v10

    const-string v0, "The container was successfully parsed from the resource"

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zzpi; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzps;->zzb:Lcom/google/android/gms/internal/gtm/zzpp;

    .line 24
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzpp;->zza([B)Lcom/google/android/gms/internal/gtm/zzpv;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzpv;

    .line 25
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzpu;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v7, v2

    .line 26
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/gtm/zzpu;-><init>(Lcom/google/android/gms/internal/gtm/zzph;[BLcom/google/android/gms/internal/gtm/zzqj;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzpv;->zzc()Lcom/google/android/gms/internal/gtm/zzqs;

    move-result-object p1

    invoke-direct {v0, v1, v5, v2, p1}, Lcom/google/android/gms/internal/gtm/zzpv;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzpu;Lcom/google/android/gms/internal/gtm/zzqs;)V

    return-object v0

    .line 23
    :cond_3
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "Resource map not found"

    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/gtm/zzpi; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "The resource data is invalid. The container cannot be extracted from the JSON data"

    .line 28
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "The resource data is corrupted. The container cannot be extracted from the JSON data"

    .line 29
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "Cannot parse a 0 length byte[]"

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzpi;

    const-string v0, "Cannot parse a null byte[]"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw p1
.end method
