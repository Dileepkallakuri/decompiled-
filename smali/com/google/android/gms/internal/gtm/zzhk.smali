.class public final Lcom/google/android/gms/internal/gtm/zzhk;
.super Lcom/google/android/gms/internal/gtm/zzau;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzhm;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.internal.ITagManagerService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzau;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x66

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzau;->zza()Landroid/os/Parcel;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzau;->zzl(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzau;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    invoke-static {v0, p6}, Lcom/google/android/gms/internal/gtm/zzaw;->zzd(Landroid/os/Parcel;Z)V

    const/16 p1, 0x65

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzau;->zzl(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzau;->zza()Landroid/os/Parcel;

    move-result-object p3

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/gtm/zzaw;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/gtm/zzau;->zzl(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzau;->zza()Landroid/os/Parcel;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzau;->zzl(ILandroid/os/Parcel;)V

    return-void
.end method
