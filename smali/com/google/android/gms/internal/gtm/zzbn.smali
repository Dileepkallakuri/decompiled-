.class final Lcom/google/android/gms/internal/gtm/zzbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbs;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbn;->zzb:Lcom/google/android/gms/internal/gtm/zzbs;

    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzbn;->zza:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbn;->zzb:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzb(Lcom/google/android/gms/internal/gtm/zzbs;)Lcom/google/android/gms/internal/gtm/zzcm;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzbn;->zza:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzcm;->zzY(J)V

    return-void
.end method
