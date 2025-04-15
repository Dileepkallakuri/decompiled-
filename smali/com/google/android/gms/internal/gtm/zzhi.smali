.class public abstract Lcom/google/android/gms/internal/gtm/zzhi;
.super Lcom/google/android/gms/internal/gtm/zzav;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzhj;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.tagmanager.internal.ITagManagerLoadContainerCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzav;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzg(Landroid/os/Parcel;)Z

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzaw;->zzc(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/gtm/zzhi;->zze(ZLjava/lang/String;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
