.class public final Lcom/google/android/gms/internal/gtm/zzpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzjv;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/json/JSONObject;

    const-string v0, "name"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "params"

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "instructions"

    .line 5
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_3

    .line 6
    :cond_0
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_7

    .line 7
    check-cast p0, Lorg/json/JSONArray;

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 9
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    .line 10
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    .line 11
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 12
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 13
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 14
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    .line 15
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 16
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object p0, v3

    move-object v2, v5

    .line 5
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 19
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 20
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :goto_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 25
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzpj;->zze(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/gtm/zzri;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzjv;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzjv;-><init>(Lcom/google/android/gms/internal/gtm/zzie;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p0

    .line 17
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid JSON in runtime section"

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzb(Lorg/json/JSONArray;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzpi;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzqn;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "if"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 5
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_4

    .line 6
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzqm;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gtm/zzqn;->zzc(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqn;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "unless"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_4

    .line 9
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzqm;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gtm/zzqn;->zzb(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqn;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "add"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_4

    .line 12
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzqm;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gtm/zzqn;->zza(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqn;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 13
    :cond_2
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "block"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_4

    .line 15
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzqm;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gtm/zzqn;->zzd(Lcom/google/android/gms/internal/gtm/zzqm;)Lcom/google/android/gms/internal/gtm/zzqn;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 16
    :cond_3
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unknown Rule property: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzpj;->zzf(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 17
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzqn;->zze()Lcom/google/android/gms/internal/gtm/zzqp;

    move-result-object p0

    return-object p0
.end method

.method static zzc(Ljava/lang/Object;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqt;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzpi;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    const-string v2, "Invalid value type: "

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    .line 2
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "escape"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gtm/zzpj;->zzc(Ljava/lang/Object;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqt;

    move-result-object p0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v6, p1, :cond_b

    .line 7
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqt;->zza(I)Lcom/google/android/gms/internal/gtm/zzqt;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "list"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 10
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/gtm/zzpj;->zzc(Ljava/lang/Object;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzqt;->zzc()Lcom/google/android/gms/internal/gtm/zzqv;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqt;

    .line 12
    invoke-direct {p1, v6, p0}, Lcom/google/android/gms/internal/gtm/zzqt;-><init>(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/gtm/zzqt;->zzb(Z)Lcom/google/android/gms/internal/gtm/zzqt;

    goto/16 :goto_4

    :cond_2
    const-string v5, "map"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance p0, Ljava/util/HashMap;

    .line 15
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    move v1, v3

    .line 16
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/gtm/zzpj;->zzc(Ljava/lang/Object;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzqt;->zzc()Lcom/google/android/gms/internal/gtm/zzqv;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    .line 18
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/gtm/zzpj;->zzc(Ljava/lang/Object;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzqt;->zzc()Lcom/google/android/gms/internal/gtm/zzqv;

    move-result-object v4

    .line 19
    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqt;

    const/4 v0, 0x3

    .line 20
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/gtm/zzqt;-><init>(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/gtm/zzqt;->zzb(Z)Lcom/google/android/gms/internal/gtm/zzqt;

    goto :goto_4

    :cond_4
    const-string v5, "macro"

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzqt;

    .line 23
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzqt;-><init>(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/gtm/zzqt;->zzb(Z)Lcom/google/android/gms/internal/gtm/zzqt;

    goto :goto_5

    :cond_5
    const-string v5, "template"

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance p0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 27
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/gtm/zzpj;->zzc(Ljava/lang/Object;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzqt;->zzc()Lcom/google/android/gms/internal/gtm/zzqv;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqt;

    const/4 v0, 0x7

    .line 29
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/gtm/zzqt;-><init>(ILjava/lang/Object;)V

    .line 30
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/gtm/zzqt;->zzb(Z)Lcom/google/android/gms/internal/gtm/zzqt;

    goto :goto_4

    .line 31
    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzpj;->zzf(Ljava/lang/String;)V

    return-object v1

    .line 32
    :cond_8
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqt;

    const/16 v0, 0x8

    .line 33
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/gtm/zzqt;-><init>(ILjava/lang/Object;)V

    :goto_4
    move-object p0, p1

    goto :goto_5

    .line 34
    :cond_9
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_a

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqt;

    const/4 v0, 0x6

    .line 35
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/gtm/zzqt;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    .line 36
    :cond_a
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_c

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqt;

    .line 37
    invoke-direct {p1, v3, p0}, Lcom/google/android/gms/internal/gtm/zzqt;-><init>(ILjava/lang/Object;)V

    goto :goto_4

    :cond_b
    :goto_5
    return-object p0

    .line 38
    :cond_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzpj;->zzf(Ljava/lang/String;)V

    return-object v1
.end method

.method static zzd(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/google/android/gms/internal/gtm/zzpi;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzqk;

    .line 4
    invoke-direct {v3}, Lcom/google/android/gms/internal/gtm/zzqk;-><init>()V

    .line 5
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/google/android/gms/internal/gtm/zzpj;->zzc(Ljava/lang/Object;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzqt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzqt;->zzc()Lcom/google/android/gms/internal/gtm/zzqv;

    move-result-object v6

    const-string v7, "push_after_evaluate"

    .line 9
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 10
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/gtm/zzqk;->zzb(Lcom/google/android/gms/internal/gtm/zzqv;)Lcom/google/android/gms/internal/gtm/zzqk;

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/gtm/zzqk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqv;)Lcom/google/android/gms/internal/gtm/zzqk;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzqk;->zzc()Lcom/google/android/gms/internal/gtm/zzqm;

    move-result-object v2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static zze(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/gtm/zzri;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 6
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 7
    check-cast v3, Lorg/json/JSONArray;

    .line 8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzpj;->zze(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/gtm/zzri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_1
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    .line 11
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/gtm/zzri;

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzri;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method private static zzf(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzpi;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzpi;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzpi;-><init>(Ljava/lang/String;)V

    throw v0
.end method
