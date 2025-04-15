.class public Lcom/google/android/gms/analytics/ecommerce/Promotion;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field public static final ACTION_CLICK:Ljava/lang/String; = "click"

.field public static final ACTION_VIEW:Ljava/lang/String; = "view"


# instance fields
.field zza:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public setCreative(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;
    .locals 1

    const-string v0, "cr"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;
    .locals 1

    const-string v0, "id"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;
    .locals 1

    const-string v0, "nm"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPosition(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;
    .locals 1

    const-string v0, "ps"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zza:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzj;->zzb(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Name should be non-null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
