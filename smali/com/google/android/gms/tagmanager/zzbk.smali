.class final Lcom/google/android/gms/tagmanager/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzcl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbm;Lcom/google/android/gms/tagmanager/zzcl;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzbk;->zza:Lcom/google/android/gms/tagmanager/zzcl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbk;->zza:Lcom/google/android/gms/tagmanager/zzcl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcl;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
