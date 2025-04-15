.class final Lcom/google/android/gms/internal/gtm/zzfe;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field static final zza:Ljava/lang/String; = "com.google.android.gms.internal.gtm.zzfe"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/gtm/zzbx;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzf()Lcom/google/android/gms/internal/gtm/zzbs;

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    const-string v1, "NetworkBroadcastReceiver received action"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzfe;->zze()Z

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzd:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzd:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzf()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object p2

    const-string v0, "Network connectivity status changed"

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 9
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbl;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbl;-><init>(Lcom/google/android/gms/internal/gtm/zzbs;Z)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "com.google.analytics.RADIO_POWERED"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzfe;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzf()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object p1

    const-string p2, "Radio powered up"

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzc()V

    :cond_2
    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzf()Lcom/google/android/gms/internal/gtm/zzbs;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zza()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.analytics.RADIO_POWERED"

    .line 6
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzfe;->zze()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzd:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Z

    return-void
.end method

.method public final zzb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zza()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.analytics.RADIO_POWERED"

    .line 2
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzfe;->zza:Ljava/lang/String;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zza()Landroid/content/Context;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    const-string v1, "Connectivity unknown. Receiver not registered"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzQ(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzd:Z

    return v0
.end method

.method protected final zze()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfe;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zza()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    return v1
.end method
