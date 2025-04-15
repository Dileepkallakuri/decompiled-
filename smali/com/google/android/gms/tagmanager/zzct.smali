.class public abstract Lcom/google/android/gms/tagmanager/zzct;
.super Lcom/google/android/gms/internal/gtm/zzav;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcu;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.ITagManagerServiceProvider"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzcu;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.tagmanager.ITagManagerServiceProvider"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/tagmanager/zzcu;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/tagmanager/zzcu;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcs;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-ne p1, p4, :cond_4

    .line 1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.tagmanager.IMeasurementProxy"

    .line 3
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/google/android/gms/tagmanager/zzco;

    if-eqz v3, :cond_1

    .line 5
    check-cast v2, Lcom/google/android/gms/tagmanager/zzco;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/tagmanager/zzcm;

    invoke-direct {v2, v0}, Lcom/google/android/gms/tagmanager/zzcm;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy"

    .line 7
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 8
    instance-of v3, v1, Lcom/google/android/gms/tagmanager/zzcf;

    if-eqz v3, :cond_3

    .line 9
    check-cast v1, Lcom/google/android/gms/tagmanager/zzcf;

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/tagmanager/zzcd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tagmanager/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 10
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/tagmanager/zzct;->getService(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/internal/gtm/zzhm;

    move-result-object p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/gtm/zzaw;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return p4

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
