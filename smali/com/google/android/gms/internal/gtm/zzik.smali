.class final Lcom/google/android/gms/internal/gtm/zzik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzim;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzim;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzik;->zza:Lcom/google/android/gms/internal/gtm/zzim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzin;->zzg()Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzik;->zza:Lcom/google/android/gms/internal/gtm/zzim;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzim;->zza:Lcom/google/android/gms/internal/gtm/zzin;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzin;->zzi()V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzik;->zza:Lcom/google/android/gms/internal/gtm/zzim;

    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzim;->zza:Lcom/google/android/gms/internal/gtm/zzin;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzin;->zzm(Lcom/google/android/gms/internal/gtm/zzin;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v2, 0x1b7740

    .line 3
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzim;->zzc(J)V

    :cond_0
    return v1
.end method
