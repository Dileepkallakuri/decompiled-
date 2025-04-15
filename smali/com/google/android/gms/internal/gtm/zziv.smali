.class final Lcom/google/android/gms/internal/gtm/zziv;
.super Lcom/google/android/gms/tagmanager/zzch;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzjh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziv;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzch;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 12

    const-string v0, "+gtm"

    move-object v8, p1

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v9, p0

    iget-object v1, v9, Lcom/google/android/gms/internal/gtm/zziv;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzj(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v11, Lcom/google/android/gms/internal/gtm/zziu;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v6, p4

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/gtm/zziu;-><init>(Lcom/google/android/gms/internal/gtm/zziv;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V

    .line 2
    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move-object v9, p0

    return-void
.end method
