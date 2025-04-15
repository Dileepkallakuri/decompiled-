.class public Lcom/google/android/gms/tagmanager/TagManagerServiceProviderImpl;
.super Lcom/google/android/gms/tagmanager/zzct;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/gtm/zzjl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzct;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/internal/gtm/zzhm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManagerServiceProviderImpl;->zza:Lcom/google/android/gms/internal/gtm/zzjl;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/tagmanager/TagManagerServiceProviderImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManagerServiceProviderImpl;->zza:Lcom/google/android/gms/internal/gtm/zzjl;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzjl;

    .line 2
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzjl;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/TagManagerServiceProviderImpl;->zza:Lcom/google/android/gms/internal/gtm/zzjl;

    .line 3
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method
