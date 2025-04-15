.class public abstract Lcom/google/android/gms/tagmanager/zzcq;
.super Lcom/google/android/gms/internal/gtm/zzav;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcr;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.ITagManagerApi"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzcr;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.tagmanager.ITagManagerApi"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/tagmanager/zzcr;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/tagmanager/zzcr;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzcp;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "com.google.android.gms.tagmanager.ICustomEvaluatorProxy"

    const-string v0, "com.google.android.gms.tagmanager.IMeasurementProxy"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zzaw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/content/Intent;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    move-object v7, v2

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v3, v0, Lcom/google/android/gms/tagmanager/zzco;

    if-eqz v3, :cond_2

    .line 7
    check-cast v0, Lcom/google/android/gms/tagmanager/zzco;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzcm;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v7, v0

    .line 8
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_2
    move-object v8, v2

    goto :goto_3

    .line 9
    :cond_3
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 10
    instance-of v0, p4, Lcom/google/android/gms/tagmanager/zzcf;

    if-eqz v0, :cond_4

    .line 11
    move-object v2, p4

    check-cast v2, Lcom/google/android/gms/tagmanager/zzcf;

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/tagmanager/zzcd;

    invoke-direct {v2, p1}, Lcom/google/android/gms/tagmanager/zzcd;-><init>(Landroid/os/IBinder;)V

    goto :goto_2

    .line 12
    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    move-object v3, p0

    .line 13
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/tagmanager/zzcq;->previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V

    goto :goto_6

    .line 7
    :cond_5
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zzaw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    .line 17
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/tagmanager/zzcq;->preview(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_6

    .line 18
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_7

    move-object v0, v2

    goto :goto_4

    .line 20
    :cond_7
    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 21
    instance-of v4, v0, Lcom/google/android/gms/tagmanager/zzco;

    if-eqz v4, :cond_8

    .line 22
    check-cast v0, Lcom/google/android/gms/tagmanager/zzco;

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcm;

    invoke-direct {v0, v3}, Lcom/google/android/gms/tagmanager/zzcm;-><init>(Landroid/os/IBinder;)V

    .line 23
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_5

    .line 24
    :cond_9
    invoke-interface {v3, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 25
    instance-of v2, p4, Lcom/google/android/gms/tagmanager/zzcf;

    if-eqz v2, :cond_a

    .line 26
    move-object v2, p4

    check-cast v2, Lcom/google/android/gms/tagmanager/zzcf;

    goto :goto_5

    :cond_a
    new-instance v2, Lcom/google/android/gms/tagmanager/zzcd;

    invoke-direct {v2, v3}, Lcom/google/android/gms/tagmanager/zzcd;-><init>(Landroid/os/IBinder;)V

    .line 27
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    .line 28
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gms/tagmanager/zzcq;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V

    .line 29
    :goto_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
