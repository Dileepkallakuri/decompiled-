.class public final Lcom/google/android/gms/internal/gtm/zzpg;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/util/List;

.field private static final zzc:Ljava/util/regex/Pattern;

.field private static final zzd:Ljava/util/regex/Pattern;

.field private static final zze:Ljava/util/Set;

.field private static final zzf:Ljava/util/Map;

.field private static final zzg:Ljava/util/Map;


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/gtm/zzjs;

.field private final zzi:Lcom/google/android/gms/internal/gtm/zzib;

.field private zzj:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zzaJ:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzpg;->zza:Ljava/lang/String;

    const-string v1, "detail"

    const-string v2, "checkout"

    const-string v3, "checkout_option"

    const-string v4, "click"

    const-string v5, "add"

    const-string v6, "remove"

    const-string v7, "purchase"

    const-string v8, "refund"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzpg;->zzb:Ljava/util/List;

    const-string v0, "dimension(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzpg;->zzc:Ljava/util/regex/Pattern;

    const-string v0, "metric(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzpg;->zzd:Ljava/util/regex/Pattern;

    const-string v0, "0"

    const-string v1, "false"

    const-string v2, ""

    .line 3
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzpg;->zze:Ljava/util/Set;

    const-string v1, "transactionId"

    const-string v2, "&ti"

    const-string v3, "transactionAffiliation"

    const-string v4, "&ta"

    const-string v5, "transactionTax"

    const-string v6, "&tt"

    const-string v7, "transactionShipping"

    const-string v8, "&ts"

    const-string v9, "transactionTotal"

    const-string v10, "&tr"

    const-string v11, "transactionCurrency"

    const-string v12, "&cu"

    .line 4
    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzpg;->zzf:Ljava/util/Map;

    const-string v1, "name"

    const-string v2, "&in"

    const-string v3, "sku"

    const-string v4, "&ic"

    const-string v5, "category"

    const-string v6, "&iv"

    const-string v7, "price"

    const-string v8, "&ip"

    const-string v9, "quantity"

    const-string v10, "&iq"

    const-string v11, "currency"

    const-string v12, "&cu"

    .line 5
    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzpg;->zzg:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzib;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzjs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzjs;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzpg;->zzi:Lcom/google/android/gms/internal/gtm/zzib;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpg;->zzh:Lcom/google/android/gms/internal/gtm/zzjs;

    return-void
.end method

.method private static final zzb(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzrl;->zze(Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of v1, p0, Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 6
    check-cast p0, Ljava/util/Map;

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final zzc(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const-string v1, "Cannot convert the object to Double: "

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Ljava/lang/Double;

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final zze(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const-string v1, "Cannot convert the object to Integer: "

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/lang/Double;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final zzf(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzpg;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "&aip"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzpg;->zze:Ljava/util/Set;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static final zzg(Ljava/util/Map;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/ecommerce/Product;-><init>()V

    const-string v1, "id"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_0
    const-string v1, "name"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_1
    const-string v1, "brand"

    .line 6
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setBrand(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_2
    const-string v1, "category"

    .line 8
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_3
    const-string v1, "variant"

    .line 10
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setVariant(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_4
    const-string v1, "coupon"

    .line 12
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_5
    const-string v1, "position"

    .line 14
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzpg;->zze(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setPosition(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_6
    const-string v1, "price"

    .line 16
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzpg;->zzc(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setPrice(D)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_7
    const-string v1, "quantity"

    .line 18
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzpg;->zze(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setQuantity(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 20
    :cond_8
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzpg;->zzc:Ljava/util/regex/Pattern;

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    .line 23
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    goto :goto_0

    :catch_0
    const-string v3, "illegal number in custom dimension value: "

    .line 30
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/gtm/zzpg;->zzd:Ljava/util/regex/Pattern;

    .line 26
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 28
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzpg;->zze(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCustomMetric(II)Lcom/google/android/gms/analytics/ecommerce/Product;

    goto :goto_0

    :catch_1
    const-string v3, "illegal number in custom metric value: "

    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    return-object v0
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "actionField"

    const-string v3, "promoView"

    const-string v4, "&cu"

    const-string v5, "&t"

    const-string v6, "promoClick"

    const/4 v7, 0x1

    .line 1
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v8, v0

    const/4 v9, 0x0

    .line 6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-lez v8, :cond_0

    move v11, v7

    goto :goto_0

    :cond_0
    move v11, v9

    .line 2
    :goto_0
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    :try_start_0
    iget-object v12, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzi:Lcom/google/android/gms/internal/gtm/zzib;

    .line 3
    invoke-interface {v12}, Lcom/google/android/gms/internal/gtm/zzib;->zza()Lcom/google/android/gms/internal/gtm/zzgz;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/gtm/zzgz;->zza()Landroid/os/Bundle;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzrl;->zzh(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v12

    iput-object v12, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzj:Ljava/util/Map;

    .line 4
    aget-object v12, v0, v9

    if-le v8, v7, :cond_1

    .line 5
    aget-object v13, v0, v7

    goto :goto_1

    :cond_1
    new-instance v13, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    :goto_1
    const/4 v14, 0x2

    if-le v8, v14, :cond_2

    .line 6
    aget-object v14, v0, v14

    goto :goto_2

    :cond_2
    new-instance v14, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {v14, v10}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    :goto_2
    const/4 v15, 0x3

    if-le v8, v15, :cond_3

    .line 7
    aget-object v15, v0, v15

    goto :goto_3

    .line 9
    :cond_3
    sget-object v15, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    :goto_3
    const/4 v7, 0x4

    if-le v8, v7, :cond_4

    .line 8
    aget-object v7, v0, v7

    goto :goto_4

    .line 9
    :cond_4
    sget-object v7, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    :goto_4
    const/4 v9, 0x5

    if-le v8, v9, :cond_5

    aget-object v9, v0, v9

    goto :goto_5

    :cond_5
    new-instance v9, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    :goto_5
    const/4 v11, 0x6

    if-le v8, v11, :cond_6

    .line 10
    aget-object v11, v0, v11

    :goto_6
    move-object/from16 v17, v5

    goto :goto_7

    :cond_6
    new-instance v11, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {v11, v10}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    goto :goto_6

    :goto_7
    const/4 v5, 0x7

    if-le v8, v5, :cond_7

    .line 11
    aget-object v5, v0, v5

    goto :goto_8

    .line 12
    :cond_7
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    :goto_8
    move-object/from16 v18, v14

    const/16 v14, 0x8

    if-le v8, v14, :cond_8

    aget-object v0, v0, v14

    goto :goto_9

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    .line 13
    :goto_9
    instance-of v8, v12, Lcom/google/android/gms/internal/gtm/zzrh;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v15, v8, :cond_a

    .line 14
    instance-of v8, v15, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v8, :cond_9

    goto :goto_a

    :cond_9
    const/4 v8, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v8, 0x1

    :goto_b
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v7, v8, :cond_c

    .line 15
    instance-of v8, v7, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v8, :cond_b

    goto :goto_c

    :cond_b
    const/4 v8, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v8, 0x1

    :goto_d
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v5, v8, :cond_e

    .line 16
    instance-of v8, v5, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v8, :cond_d

    goto :goto_e

    :cond_d
    const/16 v16, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/16 v16, 0x1

    :goto_f
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzh:Lcom/google/android/gms/internal/gtm/zzjs;

    const-string v10, "_GTM_DEFAULT_TRACKER_"

    .line 17
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzjs;->zza(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v8

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 19
    invoke-static {v9}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "name"

    if-eqz v0, :cond_29

    :try_start_1
    new-instance v7, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 20
    invoke-direct {v7}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 21
    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzpg;->zzf(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;

    move-result-object v0

    .line 22
    invoke-virtual {v7, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setAll(Ljava/util/Map;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 23
    invoke-static {v11}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v5, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzj:Ljava/util/Map;

    const-string v10, "ecommerce"

    .line 24
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_10

    .line 25
    :cond_f
    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzrl;->zze(Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzrl;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/Object;

    move-result-object v5

    .line 26
    :goto_10
    instance-of v10, v5, Ljava/util/Map;

    if-eqz v10, :cond_28

    .line 27
    check-cast v5, Ljava/util/Map;

    .line 28
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "currencyCode"

    .line 29
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_10
    if-eqz v0, :cond_11

    .line 30
    invoke-virtual {v7, v4, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    :cond_11
    const-string v0, "impressions"

    .line 31
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of v4, v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "Failed to extract a product from event data. "

    const-string v11, "list"

    if-eqz v4, :cond_12

    .line 33
    :try_start_2
    check-cast v0, Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzpg;->zzg(Ljava/util/Map;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v12

    .line 36
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v12, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addImpression(Lcom/google/android/gms/analytics/ecommerce/Product;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_11

    :catch_0
    move-exception v0

    .line 37
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    goto :goto_11

    .line 38
    :cond_12
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v4, "promotions"

    if-eqz v0, :cond_13

    .line 39
    :try_start_5
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 40
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_12

    .line 41
    :cond_13
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 43
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_12

    :cond_14
    const/4 v0, 0x0

    :goto_12
    const-string v3, "id"

    if-eqz v0, :cond_1b

    .line 44
    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v12, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    .line 45
    invoke-direct {v12}, Lcom/google/android/gms/analytics/ecommerce/Promotion;-><init>()V

    .line 46
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_15

    .line 47
    invoke-virtual {v12, v13}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    .line 48
    :cond_15
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_16

    .line 49
    invoke-virtual {v12, v13}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    :cond_16
    const-string v13, "creative"

    .line 50
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_17

    .line 51
    invoke-virtual {v12, v13}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setCreative(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    :cond_17
    const-string v13, "position"

    .line 52
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 53
    invoke-virtual {v12, v0}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setPosition(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    .line 54
    :cond_18
    invoke-virtual {v7, v12}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addPromotion(Lcom/google/android/gms/analytics/ecommerce/Promotion;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_13

    :catch_1
    move-exception v0

    :try_start_8
    const-string v12, "Failed to extract a promotion from event data. "

    .line 55
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    goto :goto_13

    .line 56
    :cond_19
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v4, "&promoa"

    if-eqz v0, :cond_1a

    :try_start_9
    const-string v0, "click"

    .line 57
    invoke-virtual {v7, v4, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto/16 :goto_16

    :cond_1a
    const-string v0, "view"

    .line 58
    invoke-virtual {v7, v4, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    :cond_1b
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzpg;->zzb:Ljava/util/List;

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 61
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map;

    const-string v0, "products"

    .line 62
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 64
    :try_start_a
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzpg;->zzg(Ljava/util/Map;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v0

    .line 65
    invoke-virtual {v7, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_14

    :catch_2
    move-exception v0

    .line 66
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_14

    .line 67
    :cond_1d
    :try_start_c
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 68
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 69
    invoke-direct {v2, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_1e
    const-string v3, "affiliation"

    .line 72
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_1f
    const-string v3, "coupon"

    .line 74
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 76
    :cond_20
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setProductActionList(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_21
    const-string v3, "option"

    .line 78
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setCheckoutOptions(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_22
    const-string v3, "revenue"

    .line 80
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 81
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzpg;->zzc(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionRevenue(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_23
    const-string v3, "tax"

    .line 82
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 83
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzpg;->zzc(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionTax(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_24
    const-string v3, "shipping"

    .line 84
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 85
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzpg;->zzc(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionShipping(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_25
    const-string v3, "step"

    .line 86
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 87
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzpg;->zze(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setCheckoutStep(I)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    goto :goto_15

    .line 89
    :cond_26
    new-instance v2, Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 88
    invoke-direct {v2, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;-><init>(Ljava/lang/String;)V

    .line 89
    :cond_27
    :goto_15
    invoke-virtual {v7, v2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_16

    :catch_3
    move-exception v0

    :try_start_d
    const-string v2, "Failed to extract a product action from event data. "

    .line 90
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 91
    :cond_28
    :goto_16
    invoke-virtual {v7}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_17

    .line 92
    :cond_29
    invoke-static {v13}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 93
    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzpg;->zzf(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;

    move-result-object v0

    .line 94
    invoke-virtual {v8, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    :cond_2a
    :goto_17
    const/4 v2, 0x0

    goto/16 :goto_20

    .line 95
    :cond_2b
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzj:Ljava/util/Map;

    const-string v2, "transactionId"

    .line 96
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2c

    const-string v0, "Cannot find transactionId in data layer."

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 99
    :try_start_e
    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzpg;->zzf(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "transaction"

    move-object/from16 v5, v17

    .line 100
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v15, v4, :cond_2d

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzpg;->zzf:Ljava/util/Map;

    goto :goto_18

    .line 101
    :cond_2d
    invoke-static {v15}, Lcom/google/android/gms/internal/gtm/zzpg;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;

    move-result-object v4

    .line 102
    :goto_18
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v10, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzj:Ljava/util/Map;

    .line 103
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_2e

    .line 104
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 105
    :cond_2f
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzj:Ljava/util/Map;

    const-string v4, "transactionProducts"

    .line 106
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_30

    const/4 v3, 0x0

    goto :goto_1b

    .line 107
    :cond_30
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_38

    .line 109
    check-cast v3, Ljava/util/List;

    .line 110
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 111
    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_31

    goto :goto_1a

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Each element of transactionProducts should be of type Map."

    .line 125
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_1b
    if-eqz v3, :cond_37

    .line 112
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 113
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_33

    const-string v0, "Unable to send transaction item hit due to missing \'name\' field."

    .line 124
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 114
    :cond_33
    invoke-static {v12}, Lcom/google/android/gms/internal/gtm/zzpg;->zzf(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;

    move-result-object v6

    const-string v10, "item"

    .line 115
    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "&ti"

    .line 116
    invoke-interface {v6, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v7, v10, :cond_34

    sget-object v10, Lcom/google/android/gms/internal/gtm/zzpg;->zzg:Ljava/util/Map;

    goto :goto_1d

    .line 117
    :cond_34
    invoke-static {v7}, Lcom/google/android/gms/internal/gtm/zzpg;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/util/Map;

    move-result-object v10

    .line 118
    :goto_1d
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_35
    :goto_1e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_36

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_35

    .line 120
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 121
    :cond_36
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 122
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 123
    invoke-virtual {v8, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_1f

    .line 107
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "transactionProducts should be of type List."

    .line 108
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catch_4
    move-exception v0

    :try_start_f
    const-string v2, "Unable to send transaction"

    .line 126
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    :cond_39
    const-string v0, "Ignoring unknown tag."

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_17

    .line 91
    :goto_20
    iput-object v2, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzj:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Lcom/google/android/gms/internal/gtm/zzpg;->zzj:Ljava/util/Map;

    .line 128
    throw v0
.end method
