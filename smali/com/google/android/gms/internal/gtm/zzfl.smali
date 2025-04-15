.class public final synthetic Lcom/google/android/gms/internal/gtm/zzfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/gtm/zzfp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzfd;

.field public final synthetic zzc:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzfp;Lcom/google/android/gms/internal/gtm/zzfd;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zza:Lcom/google/android/gms/internal/gtm/zzfp;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zzb:Lcom/google/android/gms/internal/gtm/zzfd;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zzc:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zza:Lcom/google/android/gms/internal/gtm/zzfp;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zzb:Lcom/google/android/gms/internal/gtm/zzfd;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzfl;->zzc:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzfp;->zzd(Lcom/google/android/gms/internal/gtm/zzfd;Landroid/app/job/JobParameters;)V

    return-void
.end method
