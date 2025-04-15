.class public abstract Lcom/google/android/gms/tagmanager/zzcn;
.super Lcom/google/android/gms/internal/gtm/zzav;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzco;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.IMeasurementProxy"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x2

    if-eq p1, p4, :cond_7

    const/16 p4, 0xb

    if-eq p1, p4, :cond_6

    const/16 p4, 0x15

    const/4 v0, 0x0

    if-eq p1, p4, :cond_3

    const/16 p4, 0x16

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p4, "com.google.android.gms.tagmanager.IMeasurementEventListener"

    .line 2
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 3
    instance-of v0, p4, Lcom/google/android/gms/tagmanager/zzci;

    if-eqz v0, :cond_2

    .line 4
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/tagmanager/zzci;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Landroid/os/IBinder;)V

    .line 5
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcn;->zzd(Lcom/google/android/gms/tagmanager/zzci;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p4, "com.google.android.gms.tagmanager.IMeasurementInterceptor"

    .line 9
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 10
    instance-of v0, p4, Lcom/google/android/gms/tagmanager/zzcl;

    if-eqz v0, :cond_5

    .line 11
    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/tagmanager/zzcl;

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzcj;-><init>(Landroid/os/IBinder;)V

    .line 12
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcn;->zze(Lcom/google/android/gms/tagmanager/zzcl;)V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcn;->zzb()Ljava/util/Map;

    move-result-object p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zzaw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcn;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
