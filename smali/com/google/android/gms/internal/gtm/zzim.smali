.class final Lcom/google/android/gms/internal/gtm/zzim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzij;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzin;

.field private final zzb:Landroid/os/Handler;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzin;Lcom/google/android/gms/internal/gtm/zzil;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzim;->zza:Lcom/google/android/gms/internal/gtm/zzin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzgc;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzin;->zzc(Lcom/google/android/gms/internal/gtm/zzin;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzik;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzik;-><init>(Lcom/google/android/gms/internal/gtm/zzim;)V

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/gtm/zzgc;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzim;->zzb:Landroid/os/Handler;

    return-void
.end method

.method private final zzd()Landroid/os/Message;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzim;->zzb:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzin;->zzg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzim;->zzb:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzin;->zzg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzim;->zzb:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzin;->zzg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzim;->zzb:Landroid/os/Handler;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzim;->zzd()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zzc(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzim;->zzb:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzin;->zzg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzim;->zzb:Landroid/os/Handler;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzim;->zzd()Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0x1b7740

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
