.class public abstract Lcom/google/android/gms/internal/gtm/zzhl;
.super Lcom/google/android/gms/internal/gtm/zzav;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzhm;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.internal.ITagManagerService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gtm/zzhm;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.tagmanager.internal.ITagManagerService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzhm;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzhm;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzhk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzhk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 p2, 0x66

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzhl;->zze()V

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zzaw;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzg(Landroid/os/Parcel;)Z

    move-result v6

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    move-object v0, p0

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzhl;->zzf(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzhl;->zzi()V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string v3, "com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback"

    .line 14
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 15
    instance-of v4, v3, Lcom/google/android/gms/internal/gtm/zzhj;

    if-eqz v4, :cond_5

    .line 16
    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzhj;

    goto :goto_0

    :cond_5
    new-instance v3, Lcom/google/android/gms/internal/gtm/zzhh;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/gtm/zzhh;-><init>(Landroid/os/IBinder;)V

    move-object v2, v3

    .line 17
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    .line 18
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzhl;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    .line 23
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzhl;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
