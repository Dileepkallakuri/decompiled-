.class public final Lcom/google/android/gms/internal/gtm/zzft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzcs;


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:D

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public zzf:I

.field public final zzg:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzft;->zzb:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzft;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzft;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzft;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzft;->zzf:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzft;->zzg:Ljava/util/Map;

    return-void
.end method
