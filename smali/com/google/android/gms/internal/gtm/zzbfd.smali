.class public final Lcom/google/android/gms/internal/gtm/zzbfd;
.super Lcom/google/android/gms/internal/gtm/zzben;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field final zza:Lcom/google/android/gms/internal/gtm/zzbgs;

.field final zzb:Ljava/lang/Object;

.field final zzc:Lcom/google/android/gms/internal/gtm/zzbgs;

.field final zzd:Lcom/google/android/gms/internal/gtm/zzbfc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfc;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzben;-><init>()V

    if-eqz p1, :cond_2

    iget-object p5, p4, Lcom/google/android/gms/internal/gtm/zzbfc;->zzc:Lcom/google/android/gms/internal/gtm/zzbip;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbip;->zzk:Lcom/google/android/gms/internal/gtm/zzbip;

    if-ne p5, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbfd;->zza:Lcom/google/android/gms/internal/gtm/zzbgs;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbfd;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzbfd;->zzc:Lcom/google/android/gms/internal/gtm/zzbgs;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzbfd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfc;

    return-void

    .line 1
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfc;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzbfc;->zzc:Lcom/google/android/gms/internal/gtm/zzbip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbip;->zza()Lcom/google/android/gms/internal/gtm/zzbiq;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzbiq;->zzh:Lcom/google/android/gms/internal/gtm/zzbiq;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfc;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzbfc;->zza:Lcom/google/android/gms/internal/gtm/zzbfi;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbfi;->zza(I)Lcom/google/android/gms/internal/gtm/zzbfh;

    move-result-object p1

    :cond_0
    return-object p1
.end method
