.class public final Lcom/google/android/gms/internal/gtm/zzhn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field static final zza:Ljava/util/Map;

.field private static zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzhn;->zza:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v0, "http://hostname/?"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzhn;->zzb:Ljava/lang/String;

    if-nez v0, :cond_2

    const-class v0, Lcom/google/android/gms/internal/gtm/zzhn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzhn;->zzb:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "gtm_install_referrer"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "referrer"

    const-string v2, ""

    .line 2
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzhn;->zzb:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 4
    sput-object p0, Lcom/google/android/gms/internal/gtm/zzhn;->zzb:Ljava/lang/String;

    .line 3
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzhn;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gtm/zzhn;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
