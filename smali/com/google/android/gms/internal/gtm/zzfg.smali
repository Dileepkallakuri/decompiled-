.class final Lcom/google/android/gms/internal/gtm/zzfg;
.super Lcom/google/android/gms/internal/gtm/zzbu;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzfq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\n"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfg;->zza:[B

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbv;->zza:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzfu;->zzd(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "GoogleAnalytics"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    .line 4
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfg;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzr()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzfq;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfg;->zzc:Lcom/google/android/gms/internal/gtm/zzfq;

    return-void
.end method

.method static bridge synthetic zzf()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfg;->zza:[B

    return-object v0
.end method

.method private final zzg(Ljava/net/URL;[BI)I
    .locals 4

    const-string p3, "Error closing http post connection output stream"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p2

    const-string v1, "POST bytes, url"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzG(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfg;->zzU()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "Post payload\n"

    .line 5
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzfg;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 7
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 8
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 11
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzfg;->zzk(Ljava/net/HttpURLConnection;)V

    .line 13
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzs()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbs;->zzi()V

    move p2, v0

    :cond_1
    const-string v0, "POST status"

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 17
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0, p3, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return p2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, v1

    goto :goto_3

    :catch_2
    move-exception p2

    move-object p1, v1

    :goto_1
    :try_start_3
    const-string v0, "Network POST connection error"

    .line 16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_4

    .line 17
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 18
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    const/4 p1, 0x0

    return p1

    :catchall_2
    move-exception p2

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_3
    if-eqz v1, :cond_6

    .line 17
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 18
    invoke-virtual {p0, p3, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 20
    :cond_7
    throw p2
.end method

.method private final zzh()Ljava/net/URL;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzew;->zzt:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Error trying to parse the hardcoded host url"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzi(Lcom/google/android/gms/internal/gtm/zzez;)Ljava/net/URL;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzh()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Error trying to parse the hardcoded host url"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzj(Lcom/google/android/gms/internal/gtm/zzez;Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzh()Z

    move-result p1

    const-string v0, "?"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzj()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzj()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    const-string p2, "Error trying to parse the hardcoded host url"

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzk(Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error closing http connection input stream"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v2, :cond_0

    if-eqz p1, :cond_1

    .line 3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_2
    :goto_1
    throw v1
.end method

.method private static final zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "UTF-8"

    .line 3
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/gtm/zzez;Z)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzg()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "z"

    const-string v4, "qt"

    const-string v5, "ht"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "AppUID"

    .line 7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "_gmsv"

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v6, v2}, Lcom/google/android/gms/internal/gtm/zzfg;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/google/android/gms/internal/gtm/zzfg;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzd()J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 13
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/gtm/zzfg;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    if-eqz p2, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzc()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long p2, v1, v4

    if-eqz p2, :cond_2

    .line 17
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzez;->zzb()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_1
    invoke-static {v0, v3, p1}, Lcom/google/android/gms/internal/gtm/zzfg;->zzl(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to encode name or value"

    .line 19
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzew;->zzE:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzew;->zzF:Lcom/google/android/gms/internal/gtm/zzev;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 10
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfg;->zzb:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to obtain http connection"

    .line 3
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Ljava/util/List;)Ljava/util/List;
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "Error closing http compressed post connection output stream"

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcv;->zza()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzfg;->zzc:Lcom/google/android/gms/internal/gtm/zzfq;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    .line 6
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzew;->zzC:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 5
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/gtm/zzfq;->zzc(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzew;->zzv:Lcom/google/android/gms/internal/gtm/zzev;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "BATCH_BY_SESSION"

    .line 9
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    const-string v5, "BATCH_BY_TIME"

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "BATCH_BY_BRUTE_FORCE"

    .line 11
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const-string v5, "BATCH_BY_COUNT"

    .line 12
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    const-string v5, "BATCH_BY_SIZE"

    .line 13
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 14
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    sget-object v5, Lcom/google/android/gms/internal/gtm/zzew;->zzw:Lcom/google/android/gms/internal/gtm/zzev;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "GZIP"

    .line 16
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eq v3, v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v3

    goto :goto_4

    :cond_7
    :goto_2
    const/4 v0, 0x0

    :goto_3
    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0xc8

    if-eqz v0, :cond_18

    .line 48
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 49
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Uploading batched hits. compression, count"

    invoke-virtual {v1, v9, v0, v8}, Lcom/google/android/gms/internal/gtm/zzbt;->zzP(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzff;

    .line 50
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/gtm/zzff;-><init>(Lcom/google/android/gms/internal/gtm/zzfg;)V

    new-instance v9, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v10, 0x0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/gtm/zzez;

    .line 53
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/gtm/zzff;->zzb(Lcom/google/android/gms/internal/gtm/zzez;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_6

    .line 54
    :cond_9
    invoke-virtual {v11}, Lcom/google/android/gms/internal/gtm/zzez;->zzb()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gtz v10, :cond_8

    .line 55
    invoke-virtual {v11}, Lcom/google/android/gms/internal/gtm/zzez;->zza()I

    move-result v10

    goto :goto_5

    .line 53
    :cond_a
    :goto_6
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzff;->zza()I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_e

    .line 56
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzfg;->zzh()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "Failed to build batching endpoint url"

    .line 57
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzI(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto/16 :goto_e

    :cond_c
    if-eqz v5, :cond_15

    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzff;->zzc()[B

    move-result-object v5

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :try_start_0
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v11, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {v11, v5}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 65
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 66
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 67
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "POST compressed size, ratio %, url"

    .line 68
    array-length v12, v10

    .line 69
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    int-to-long v14, v12

    const-wide/16 v16, 0x64

    mul-long v14, v14, v16

    array-length v7, v5

    int-to-long v3, v7

    div-long/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 68
    invoke-virtual {v1, v11, v13, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzH(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-le v12, v7, :cond_d

    const-string v3, "Compressed payload is larger then uncompressed. compressed, uncompressed"

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 71
    invoke-virtual {v1, v3, v13, v4}, Lcom/google/android/gms/internal/gtm/zzbt;->zzS(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfg;->zzU()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Post payload"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_e
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzfg;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x1

    .line 75
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Encoding"

    const-string v4, "gzip"

    .line 76
    invoke-virtual {v3, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 78
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 79
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    :try_start_2
    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V

    .line 81
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzfg;->zzk(Ljava/net/HttpURLConnection;)V

    .line 83
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v6, :cond_f

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzs()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzi()V

    move v0, v6

    :cond_f
    const-string v4, "POST status"

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_10

    .line 89
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    move v4, v0

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    move-object v7, v4

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v7, v3

    move-object/from16 v16, v4

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    const/4 v7, 0x0

    :goto_7
    move-object v3, v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v7, v3

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v0

    const/4 v7, 0x0

    const/16 v16, 0x0

    goto :goto_b

    :catch_2
    move-exception v0

    const/4 v7, 0x0

    :goto_8
    const/16 v16, 0x0

    :goto_9
    :try_start_4
    const-string v3, "Network compressed POST connection error"

    .line 86
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v16, :cond_11

    .line 87
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 88
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    :goto_a
    if-eqz v7, :cond_12

    .line 89
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    const/4 v4, 0x0

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object/from16 v18, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v18

    :goto_b
    if-eqz v7, :cond_13

    .line 87
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v4, v0

    .line 88
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    :goto_c
    if-eqz v16, :cond_14

    .line 89
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_14
    throw v3

    .line 91
    :cond_15
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzff;->zzc()[B

    move-result-object v2

    invoke-direct {v1, v0, v2, v10}, Lcom/google/android/gms/internal/gtm/zzfg;->zzg(Ljava/net/URL;[BI)I

    move-result v4

    :goto_d
    if-ne v4, v6, :cond_16

    .line 89
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzff;->zza()I

    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Batched upload completed. Hits batched"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 93
    :cond_16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Network error uploading hits. status code"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzcv;->zza()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Server instructed the client to stop batching"

    .line 95
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzQ(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzfg;->zzc:Lcom/google/android/gms/internal/gtm/zzfq;

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfq;->zzb()V

    .line 97
    :cond_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    :goto_e
    return-object v9

    .line 55
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzez;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzez;->zzh()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzfg;->zza(Lcom/google/android/gms/internal/gtm/zzez;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzz()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v4

    const-string v7, "Error formatting hit for upload"

    invoke-virtual {v4, v3, v7}, Lcom/google/android/gms/internal/gtm/zzfd;->zzb(Lcom/google/android/gms/internal/gtm/zzez;Ljava/lang/String;)V

    :goto_f
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 22
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 23
    sget-object v8, Lcom/google/android/gms/internal/gtm/zzew;->zzu:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v7, v8, :cond_1f

    .line 24
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzfg;->zzj(Lcom/google/android/gms/internal/gtm/zzez;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-nez v4, :cond_1b

    const-string v0, "Failed to build collect GET endpoint url"

    .line 44
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzI(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 25
    :cond_1b
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "GET request"

    .line 26
    invoke-virtual {v1, v7, v4}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :try_start_7
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/gtm/zzfg;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 28
    :try_start_8
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 29
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/gtm/zzfg;->zzk(Ljava/net/HttpURLConnection;)V

    .line 30
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    if-ne v7, v6, :cond_1c

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzs()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzbs;->zzi()V

    move v7, v6

    :cond_1c
    const-string v8, "GET status"

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v4, :cond_1d

    .line 33
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1d
    if-ne v7, v6, :cond_23

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v7, v4

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v7, v4

    goto :goto_10

    :catchall_5
    move-exception v0

    const/4 v7, 0x0

    goto :goto_11

    :catch_6
    move-exception v0

    const/4 v7, 0x0

    :goto_10
    :try_start_9
    const-string v3, "Network GET connection error"

    .line 45
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v7, :cond_23

    .line 33
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_13

    :catchall_6
    move-exception v0

    :goto_11
    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    :cond_1e
    throw v0

    :cond_1f
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/gtm/zzfg;->zza(Lcom/google/android/gms/internal/gtm/zzez;Z)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_20

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzz()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v7

    const-string v8, "Error formatting hit for POST upload"

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/gtm/zzfd;->zzb(Lcom/google/android/gms/internal/gtm/zzez;Ljava/lang/String;)V

    goto :goto_12

    .line 36
    :cond_20
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 37
    array-length v8, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    sget-object v9, Lcom/google/android/gms/internal/gtm/zzew;->zzz:Lcom/google/android/gms/internal/gtm/zzev;

    .line 38
    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v8, v9, :cond_21

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzz()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v7

    const-string v8, "Hit payload exceeds size limit"

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/gtm/zzfd;->zzb(Lcom/google/android/gms/internal/gtm/zzez;Ljava/lang/String;)V

    goto :goto_12

    .line 40
    :cond_21
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzfg;->zzi(Lcom/google/android/gms/internal/gtm/zzez;)Ljava/net/URL;

    move-result-object v8

    if-nez v8, :cond_22

    const-string v0, "Failed to build collect POST endpoint url"

    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzI(Ljava/lang/String;)V

    goto :goto_13

    .line 41
    :cond_22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzez;->zza()I

    move-result v9

    invoke-direct {v1, v8, v7, v9}, Lcom/google/android/gms/internal/gtm/zzfg;->zzg(Ljava/net/URL;[BI)I

    move-result v7

    if-ne v7, v6, :cond_23

    .line 42
    :goto_12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzez;->zzb()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzcv;->zzh()I

    move-result v7

    if-lt v3, v7, :cond_19

    :cond_23
    :goto_13
    return-object v2
.end method

.method protected final zzd()V
    .locals 2

    const-string v0, "Network initialized. User agent"

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfg;->zzb:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    const-string v0, "No network connectivity"

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
