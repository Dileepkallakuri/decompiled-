.class final Lcom/google/android/gms/internal/gtm/zziq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzgy;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzip;

.field private final zzd:Ljava/util/Map;

.field private final zze:Ljava/util/Map;

.field private final zzf:Lcom/google/android/gms/common/util/Clock;

.field private final zzg:Lcom/google/android/gms/internal/gtm/zzio;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzip;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzio;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zziq;->zzg:Lcom/google/android/gms/internal/gtm/zzio;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziq;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zziq;->zzc:Lcom/google/android/gms/internal/gtm/zzip;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziq;->zzd:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziq;->zze:Ljava/util/Map;

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziq;->zzf:Lcom/google/android/gms/common/util/Clock;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_3
    :goto_0
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GoogleTagManager"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "5.06"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 p1, 0x3

    aput-object v0, v2, p1

    const/4 p1, 0x4

    aput-object p2, v2, p1

    const/4 p1, 0x5

    aput-object v1, v2, p1

    const-string p1, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    .line 11
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziq;->zza:Ljava/lang/String;

    return-void
.end method

.method static final zzc(Lcom/google/android/gms/internal/gtm/zzhb;)Ljava/net/URL;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzhb;->zze()Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "Error trying to parse the GTM url."

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/util/List;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "GET"

    const-string v3, ": "

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0x28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_14

    move-object/from16 v9, p1

    .line 2
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzhb;

    .line 3
    invoke-static {v10}, Lcom/google/android/gms/internal/gtm/zziq;->zzc(Lcom/google/android/gms/internal/gtm/zzhb;)Ljava/net/URL;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzd:Ljava/util/Map;

    .line 4
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzd:Ljava/util/Map;

    .line 5
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zze:Ljava/util/Map;

    .line 6
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v12, v14

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v0, v12, v14

    if-lez v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzc:Lcom/google/android/gms/internal/gtm/zzip;

    .line 71
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/gtm/zzip;->zzb(Lcom/google/android/gms/internal/gtm/zzhb;)V

    goto/16 :goto_13

    .line 8
    :cond_0
    invoke-virtual {v10}, Lcom/google/android/gms/internal/gtm/zzhb;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v10}, Lcom/google/android/gms/internal/gtm/zzhb;->zzf()Ljava/util/Map;

    move-result-object v12

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/gtm/zzhb;->zzc()Ljava/lang/String;

    move-result-object v13

    if-nez v11, :cond_1

    const-string v0, "No destination: discarding hit."

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzc:Lcom/google/android/gms/internal/gtm/zzip;

    .line 70
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/gtm/zzip;->zza(Lcom/google/android/gms/internal/gtm/zzhb;)V

    goto/16 :goto_13

    .line 11
    :cond_1
    :try_start_0
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    .line 12
    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v8, :cond_2

    :try_start_1
    iget-object v8, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzb:Landroid/content/Context;

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/internal/gtm/zzhp;->zza(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v8, v5

    goto/16 :goto_f

    :cond_2
    :goto_1
    :try_start_2
    const-string v8, "User-Agent"

    iget-object v15, v1, Lcom/google/android/gms/internal/gtm/zziq;->zza:Ljava/lang/String;

    .line 14
    invoke-virtual {v14, v8, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_3

    .line 15
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v15, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    new-array v0, v5, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v10}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v6

    const-string v8, "Hit %d retrieved from the store has null HTTP method."

    .line 18
    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzc:Lcom/google/android/gms/internal/gtm/zzip;

    .line 20
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/gtm/zzip;->zza(Lcom/google/android/gms/internal/gtm/zzhb;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 21
    :cond_4
    :goto_3
    :try_start_3
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move v8, v6

    goto/16 :goto_13

    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 22
    :cond_5
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const-string v12, "POST"

    const-string v15, "PUT"

    const-string v6, "HEAD"

    if-nez v8, :cond_6

    .line 23
    :try_start_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 24
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 25
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    new-array v6, v5, [Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/4 v8, 0x0

    :try_start_6
    aput-object v0, v6, v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v0, "Unrecongnized HTTP method %s. Supported methods are GET, HEAD, PUT and/or POST"

    .line 55
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzc:Lcom/google/android/gms/internal/gtm/zzip;

    .line 57
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/gtm/zzip;->zza(Lcom/google/android/gms/internal/gtm/zzhb;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 21
    :try_start_8
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_13

    :catch_1
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move v6, v8

    goto/16 :goto_e

    :cond_6
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const/4 v5, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_4

    .line 36
    :sswitch_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v8, v5

    goto :goto_5

    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :sswitch_2
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x3

    goto :goto_5

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v8, -0x1

    :goto_5
    if-eqz v8, :cond_a

    const/4 v6, 0x1

    if-eq v8, v6, :cond_a

    if-eq v8, v5, :cond_9

    const/4 v5, 0x3

    if-eq v8, v5, :cond_9

    :cond_8
    move v12, v6

    const/4 v6, 0x0

    goto :goto_7

    .line 26
    :cond_9
    :try_start_a
    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz v13, :cond_8

    .line 27
    invoke-virtual {v14, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "UTF-8"

    .line 28
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 29
    array-length v6, v5

    invoke-virtual {v14, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 30
    new-instance v6, Ljava/io/BufferedOutputStream;

    .line 31
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    invoke-virtual {v6, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 33
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 34
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto :goto_7

    :cond_a
    if-eqz v13, :cond_b

    new-array v5, v5, [Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v6, 0x0

    :try_start_b
    aput-object v0, v5, v6

    const/4 v12, 0x1

    aput-object v13, v5, v12

    const-string v8, "Body of %s hit is ignored: %s."

    .line 35
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 36
    :goto_6
    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 37
    :goto_7
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response code = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    const/16 v8, 0xc8

    if-lt v5, v8, :cond_d

    const/16 v8, 0x12c

    if-lt v5, v8, :cond_c

    goto :goto_8

    .line 49
    :cond_c
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 50
    :try_start_c
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Hit sent to "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(method = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzc:Lcom/google/android/gms/internal/gtm/zzip;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzhq;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzhq;->zza:Lcom/google/android/gms/internal/gtm/zzhs;

    .line 51
    invoke-virtual {v10}, Lcom/google/android/gms/internal/gtm/zzhb;->zzb()J

    move-result-wide v12

    invoke-static {v0, v12, v13}, Lcom/google/android/gms/internal/gtm/zzhs;->zzk(Lcom/google/android/gms/internal/gtm/zzhs;J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzd:Ljava/util/Map;

    .line 52
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zze:Ljava/util/Map;

    .line 53
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move v8, v6

    goto/16 :goto_10

    .line 39
    :cond_d
    :goto_8
    :try_start_d
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad response received for "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 41
    :try_start_e
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_f

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    .line 42
    invoke-direct {v12, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 43
    :goto_9
    :try_start_f
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error Message: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_d

    :cond_f
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_10

    .line 46
    :try_start_10
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzc:Lcom/google/android/gms/internal/gtm/zzip;

    .line 48
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/gtm/zzip;->zzb(Lcom/google/android/gms/internal/gtm/zzhb;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const/4 v15, 0x0

    :goto_b
    if-eqz v15, :cond_4

    .line 54
    :try_start_11
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_3

    :goto_c
    move v8, v6

    goto :goto_11

    :catchall_4
    move-exception v0

    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_11

    .line 46
    :try_start_12
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 47
    :cond_11
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_5
    move-exception v0

    const/4 v6, 0x0

    goto :goto_e

    :catchall_6
    move-exception v0

    :goto_e
    move v8, v6

    :goto_f
    const/4 v15, 0x0

    :goto_10
    if-eqz v15, :cond_12

    .line 54
    :try_start_13
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 21
    :cond_12
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 58
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    :catch_2
    move-exception v0

    .line 59
    :goto_11
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Exception sending hit to "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzc:Lcom/google/android/gms/internal/gtm/zzip;

    .line 61
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/gtm/zzip;->zzb(Lcom/google/android/gms/internal/gtm/zzhb;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zze:Ljava/util/Map;

    .line 62
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzf:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v10}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 63
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzd:Ljava/util/Map;

    .line 64
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzd:Ljava/util/Map;

    .line 65
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v12

    const-wide/32 v14, 0x927c0

    .line 66
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_12

    :cond_13
    const-wide/16 v12, 0x1388

    :goto_12
    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zziq;->zzd:Ljava/util/Map;

    .line 67
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "URL resulting in exception can be retried in "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "ms. URL: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    :goto_13
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_14
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_3
        0x136ef -> :sswitch_2
        0x21c5e0 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zzb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziq;->zzb:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "...no network connectivity"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
