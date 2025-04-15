.class public final Lcom/google/android/gms/internal/gtm/zzbk;
.super Lcom/google/android/gms/internal/gtm/zzbu;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field public static zza:Z


# instance fields
.field private zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzfq;

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private final zzf:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zze:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzf:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzr()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzfq;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzc:Lcom/google/android/gms/internal/gtm/zzfq;

    return-void
.end method

.method private final declared-synchronized zzc()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzc:Lcom/google/android/gms/internal/gtm/zzfq;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzfq;->zzc(J)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzc:Lcom/google/android/gms/internal/gtm/zzfq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfq;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    :try_start_2
    sget-boolean v3, Lcom/google/android/gms/internal/gtm/zzbk;->zza:Z

    if-nez v3, :cond_0

    sput-boolean v0, Lcom/google/android/gms/internal/gtm/zzbk;->zza:Z

    const-string v3, "Error getting advertiser id"

    .line 4
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string v2, "IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added \'<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />\' to your application manifest file. See http://goo.gl/naFqQk for details."

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzQ(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v2, v1

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v2, :cond_1

    move-object v4, v1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_9

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzv()Lcom/google/android/gms/internal/gtm/zzcp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzcp;->zzb()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzf:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v7, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zze:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x0

    if-nez v7, :cond_5

    .line 9
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v3

    const-string v7, "gaClientIdData"

    invoke-virtual {v3, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const/16 v7, 0x80

    new-array v9, v7, [B

    .line 10
    invoke-virtual {v3, v9, v8, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v10

    if-lez v10, :cond_3

    const-string v7, "Hash file seems corrupted, deleting it."

    .line 12
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/gtm/zzbt;->zzQ(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v3

    const-string v7, "gaClientIdData"

    invoke-virtual {v3, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_5

    :cond_3
    if-gtz v7, :cond_4

    const-string v7, "Hash file is empty."

    .line 15
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    :cond_4
    new-instance v10, Ljava/lang/String;

    .line 17
    invoke-direct {v10, v9, v8, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v10, v1

    move-object v1, v3

    :goto_3
    :try_start_6
    const-string v3, "Error reading Hash file, deleting it"

    .line 19
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v1

    const-string v3, "gaClientIdData"

    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :catch_4
    :goto_4
    move-object v1, v10

    .line 14
    :catch_5
    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzd:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zze:Z

    goto :goto_7

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzd:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v3, :cond_6

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_7

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbk;->zzf(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v6

    goto :goto_8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbk;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzd:Ljava/lang/String;

    .line 14
    :cond_8
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbk;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 27
    monitor-exit v6

    goto :goto_a

    .line 37
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzd:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    monitor-exit v6

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzd:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "Resetting the client id because Advertising Id changed."

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzv()Lcom/google/android/gms/internal/gtm/zzcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcp;->zze()Ljava/lang/String;

    move-result-object v5

    const-string v0, "New client Id"

    .line 33
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbk;->zzf(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    if-eqz v0, :cond_c

    .line 7
    :goto_9
    :try_start_7
    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    goto :goto_b

    :cond_c
    :goto_a
    const-string v0, "Failed to reset client id on adid change. Not using adid"

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzI(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const-string v1, ""

    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 35
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    .line 7
    :cond_d
    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzb:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zze(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfu;->zze(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-direct {v4, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p0, 0x0

    aput-object v4, v3, p0

    const-string p0, "%032X"

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzf(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzbk;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Storing hashed adid."

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gaClientIdData"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->zzd:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "Error creating hash file"

    .line 7
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbk;->zzc()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final zzb()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbk;->zzc()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected final zzd()V
    .locals 0

    return-void
.end method
