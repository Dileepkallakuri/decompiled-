.class final Lcom/google/android/gms/internal/gtm/zzht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzhu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzhu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzht;->zza:Lcom/google/android/gms/internal/gtm/zzhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzht;->zza:Lcom/google/android/gms/internal/gtm/zzhu;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzhu;->zza(Lcom/google/android/gms/internal/gtm/zzhu;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzht;->zza:Lcom/google/android/gms/internal/gtm/zzhu;

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzhu;->zza(Lcom/google/android/gms/internal/gtm/zzhu;)Landroid/content/Context;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "Invoke the launch activity for package name: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzht;->zza:Lcom/google/android/gms/internal/gtm/zzhu;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzhu;->zza(Lcom/google/android/gms/internal/gtm/zzhu;)Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p2, "No launch activity found for package name: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-void
.end method
