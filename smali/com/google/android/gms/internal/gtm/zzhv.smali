.class public final Lcom/google/android/gms/internal/gtm/zzhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static zza:Lcom/google/android/gms/internal/gtm/zzhv;


# instance fields
.field private volatile zzb:Ljava/lang/String;

.field private volatile zzc:Ljava/lang/String;

.field private volatile zzd:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzc:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzhv;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/gtm/zzhv;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzhv;->zza:Lcom/google/android/gms/internal/gtm/zzhv;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzhv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzhv;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzhv;->zza:Lcom/google/android/gms/internal/gtm/zzhv;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzhv;->zza:Lcom/google/android/gms/internal/gtm/zzhv;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzhv;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized zzf(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\S+"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "Bad preview url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    const-string v2, "id"

    .line 5
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gtm_auth"

    .line 6
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gtm_preview"

    .line 7
    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Preview fails (container doesn\'t match the container specified by the asset)"

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzb:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzd:I

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "Exit preview mode for container: "

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzd:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzc:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "Error in exiting preview mode. The container is not in preview."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :cond_4
    if-eqz v4, :cond_5

    .line 15
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzd:I

    .line 12
    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzc:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzhv;->zzb:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :goto_1
    monitor-exit p0

    return p1

    :cond_5
    :try_start_5
    const-string p1, "Bad preview url: "

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0

    :cond_6
    :try_start_6
    const-string p1, "Bad preview url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_7
    const-string p2, "Error decoding the preview url: "

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0

    throw p1
.end method
