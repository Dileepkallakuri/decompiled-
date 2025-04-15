.class public Lcom/google/android/gms/tagmanager/TagManagerPreviewActivity;
.super Landroid/app/Activity;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "TagManagerPreviewActivity created."

    const-string v1, "GoogleTagManager"

    .line 1
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/TagManagerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Activity intent has no data."

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/TagManagerPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/tagmanager/zzbo;->zzf(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
