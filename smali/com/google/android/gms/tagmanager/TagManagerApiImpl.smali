.class public Lcom/google/android/gms/tagmanager/TagManagerApiImpl;
.super Lcom/google/android/gms/tagmanager/zzcq;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private zza:Lcom/google/android/gms/internal/gtm/zzjh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcq;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzjh;->zzf(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/internal/gtm/zzjh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzjh;->zzm([Ljava/lang/String;)V

    return-void
.end method

.method public preview(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "Deprecated. Please use previewIntent instead."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-void
.end method

.method public previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    .line 3
    invoke-static {p2, p4, p5}, Lcom/google/android/gms/internal/gtm/zzjh;->zzf(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/internal/gtm/zzjh;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    new-instance p4, Lcom/google/android/gms/internal/gtm/zzhu;

    iget-object p5, p0, Lcom/google/android/gms/tagmanager/TagManagerApiImpl;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/google/android/gms/internal/gtm/zzhu;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzjh;)V

    .line 4
    invoke-virtual {p4}, Lcom/google/android/gms/internal/gtm/zzhu;->zzb()V

    return-void
.end method
